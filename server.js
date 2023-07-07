var express = require("express")
var { graphqlHTTP } = require("express-graphql")
var { buildSchema } = require("graphql")

// Construct a schema, using GraphQL schema language
var schema = buildSchema(`
  type Child {
    name: String!
    age: Int
  }
  type Hero {
    name: String!
    children: [Child]
    age: Int
  }
  type Query {
    hero: Hero
  }

`)

class Child {
  constructor(name, age) {
	  this.name = name
	  this.age = age
  }

  age() {
    return _age
  }

  name() {
    return _name
  }
}

class Hero {
  constructor(name, age) {
	  this.name = name
	  this.age = age
    this.children = [
      new Child("Bob", 12), new Child("Alice", null)
    ]
  }

  age() {
    return _age
  }

  name() {
    return _name
  }
}

// The root provides a resolver function for each API endpoint
var root = {
  hero: () => {
    return new Hero("Frank", null);
  },
}

var app = express()
app.use(
  "/graphql",
  graphqlHTTP({
    schema: schema,
    rootValue: root,
    graphiql: true,
  })
)
app.listen(4000)
console.log("Running a GraphQL API server at http://localhost:4000/graphql")
