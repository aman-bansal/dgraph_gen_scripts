curl -X POST localhost:8080/admin/schema --data-binary '@schema_elearn.graphql'

# Write your query or mutation here
mutation {
  addCourse(input: [{
  	name: "Welcome to Dgraph",
    chapters: [
      {
        name: "Introduction to graphql",
        data : "Graphql is Easy"
      }
    ]

  }]) {
    course {
      cId
    }
  }
}

mutation {
  addQuestion(input: [{
  	name: "Questions: Welcome to Dgraph",
    questions: "Did you like it?",
    answer: "yes"
  }]) {
    question {
      cId
    }
  }
}

mutation {
  addUser(input: [{
    username: "XYZ",
    email: "xyz@abc.com",
    Content: [
     {
      cId: "0x3"
    },
      {
        cId: "0x5"
      }
    ]
    }]) {
    user {
      userId
      username
      Content {
        cId
        name
        ... on Course {
          chapters {
            name
            data
          }
        }

        ... on Question {
          questions
          answer
        }
      }
    }
  }
}