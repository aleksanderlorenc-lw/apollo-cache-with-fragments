// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol ApolloCacheGQL_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == ApolloCacheGQL.SchemaMetadata {}

protocol ApolloCacheGQL_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == ApolloCacheGQL.SchemaMetadata {}

protocol ApolloCacheGQL_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == ApolloCacheGQL.SchemaMetadata {}

protocol ApolloCacheGQL_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == ApolloCacheGQL.SchemaMetadata {}

extension ApolloCacheGQL {
  typealias ID = String

  typealias SelectionSet = ApolloCacheGQL_SelectionSet

  typealias InlineFragment = ApolloCacheGQL_InlineFragment

  typealias MutableSelectionSet = ApolloCacheGQL_MutableSelectionSet

  typealias MutableInlineFragment = ApolloCacheGQL_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return ApolloCacheGQL.Objects.Query
      case "Hero": return ApolloCacheGQL.Objects.Hero
      case "Child": return ApolloCacheGQL.Objects.Child
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}