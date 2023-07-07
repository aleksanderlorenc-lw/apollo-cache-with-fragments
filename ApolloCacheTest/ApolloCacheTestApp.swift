import SwiftUI
import Apollo

class TestViewModel: ObservableObject {
    let store: ApolloStore
    let client: ApolloClient
    var cancellable: Cancellable?

    var watcher: GraphQLQueryWatcher<ApolloCacheGQL.GetHeroQuery>?

    init() {
        store = ApolloStore()
        client = ApolloClient(
            networkTransport: RequestChainNetworkTransport(
                interceptorProvider: DefaultInterceptorProvider(store: store),
                endpointURL: URL(string: "http://localhost:4000/graphql")!
            ),
            store: store
        )

        watcher = client.watch(
            query: ApolloCacheGQL.GetHeroQuery(),
            cachePolicy: .fetchIgnoringCacheData,
            resultHandler: { result in
            switch result {
            case let .success(data):
                print(data.data?.hero?.name)

            case let .failure(error):
                print("Watch error \(error)")
            }
        })

        cancellable = client.fetch(
            query: ApolloCacheGQL.GetHeroQuery(),
            cachePolicy: .fetchIgnoringCacheData,
            resultHandler: { result in
                switch result {
                case .success:
                    self.store.withinReadWriteTransaction({ transaction in
                        do {
                            try transaction.updateObject(
                                ofType: ApolloCacheGQL.ChildrenFragment.self,
                                withKey: "testKey",
                                variables: ApolloCacheGQL.GetHeroQuery().__variables
                            ) { fragment in
                                fragment.children?.append(contentsOf: [.init(name: "Ben", age: nil)])
                            }

                        } catch {
                            print("Caught error while updating object \(error)")
                        }
                    }, completion: { result in
                        switch result {
                        case .success:
                            print("ok")

                        case let .failure(error):
                            print("withinReadWriteTransaction error \(error)")
                        }
                    })

                case let .failure(error):
                    print("fetch error \(error)")
                }
            })
    }
}

@main
struct ApolloCacheTestApp: App {
    @StateObject var viewModel = TestViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
