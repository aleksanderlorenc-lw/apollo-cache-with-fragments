// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension ApolloCacheGQL {
  struct ChildrenFragment: ApolloCacheGQL.MutableSelectionSet, Fragment {
    static var fragmentDefinition: StaticString { """
      fragment ChildrenFragment on Hero {
        __typename
        children {
          __typename
          name
          age
        }
      }
      """ }

    var __data: DataDict
    init(_dataDict: DataDict) { __data = _dataDict }

    static var __parentType: ApolloAPI.ParentType { ApolloCacheGQL.Objects.Hero }
    static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("children", [Child?]?.self),
    ] }

    var children: [Child?]? {
      get { __data["children"] }
      set { __data["children"] = newValue }
    }

    init(
      children: [Child?]? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": ApolloCacheGQL.Objects.Hero.typename,
          "children": children._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(ChildrenFragment.self)
        ]
      ))
    }

    /// Child
    ///
    /// Parent Type: `Child`
    struct Child: ApolloCacheGQL.MutableSelectionSet {
      var __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { ApolloCacheGQL.Objects.Child }
      static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String.self),
        .field("age", Int?.self),
      ] }

      var name: String {
        get { __data["name"] }
        set { __data["name"] = newValue }
      }
      var age: Int? {
        get { __data["age"] }
        set { __data["age"] = newValue }
      }

      init(
        name: String,
        age: Int? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": ApolloCacheGQL.Objects.Child.typename,
            "name": name,
            "age": age,
          ],
          fulfilledFragments: [
            ObjectIdentifier(ChildrenFragment.Child.self)
          ]
        ))
      }
    }
  }

}
