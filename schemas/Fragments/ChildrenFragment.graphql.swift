// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension Schemas {
  struct ChildrenFragment: Schemas.SelectionSet, Fragment {
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

    let __data: DataDict
    init(_dataDict: DataDict) { __data = _dataDict }

    static var __parentType: ApolloAPI.ParentType { Schemas.Objects.Hero }
    static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("children", [Child?]?.self),
    ] }

    var children: [Child?]? { __data["children"] }

    /// Child
    ///
    /// Parent Type: `Child`
    struct Child: Schemas.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { Schemas.Objects.Child }
      static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String.self),
        .field("age", Int?.self),
      ] }

      var name: String { __data["name"] }
      var age: Int? { __data["age"] }
    }
  }

}