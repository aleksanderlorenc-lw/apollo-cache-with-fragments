// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol Schemas_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == Schemas.SchemaMetadata {}

protocol Schemas_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == Schemas.SchemaMetadata {}

protocol Schemas_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == Schemas.SchemaMetadata {}

protocol Schemas_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == Schemas.SchemaMetadata {}

extension Schemas {
  typealias ID = String

  typealias SelectionSet = Schemas_SelectionSet

  typealias InlineFragment = Schemas_InlineFragment

  typealias MutableSelectionSet = Schemas_MutableSelectionSet

  typealias MutableInlineFragment = Schemas_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return Schemas.Objects.Query
      case "Hero": return Schemas.Objects.Hero
      case "Child": return Schemas.Objects.Child
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}