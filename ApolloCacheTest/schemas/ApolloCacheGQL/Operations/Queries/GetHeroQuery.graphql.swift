// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension ApolloCacheGQL {
  class GetHeroQuery: GraphQLQuery {
    static let operationName: String = "GetHero"
    static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query GetHero {
          hero {
            __typename
            age
            name
            ...ChildrenFragment
          }
        }
        """#,
        fragments: [ChildrenFragment.self]
      ))

    public init() {}

    struct Data: ApolloCacheGQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { ApolloCacheGQL.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("hero", Hero?.self),
      ] }

      var hero: Hero? { __data["hero"] }

      /// Hero
      ///
      /// Parent Type: `Hero`
      struct Hero: ApolloCacheGQL.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { ApolloCacheGQL.Objects.Hero }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("age", Int?.self),
          .field("name", String.self),
          .fragment(ChildrenFragment.self),
        ] }

        var age: Int? { __data["age"] }
        var name: String { __data["name"] }
        var children: [ChildrenFragment.Child?]? { __data["children"] }

        struct Fragments: FragmentContainer {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          var childrenFragment: ChildrenFragment { _toFragment() }
        }
      }
    }
  }

}