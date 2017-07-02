# README
Pathways

The goal of Pathways is to ease the transition of fostered youth into adulthood by providing a clear path to independence.
Ideally, Pathways will provide a tool for social workers to engage with their clients and speak to them about successes and challenges along their path.  

When Pathways is first opened, clients will have access to 3 badges in Identity, which are the keys to unlocking other badges. we felt these items provided a good foundation.

* Ruby version
Ruby 2.3.3,
Rails 5.02

* System dependencies
postgreSQL

* Database creation
rails db:create

* Database initialization
rails db:migrate

* How to run the test suite
No test suite present

* Deployment instructions

* API Endpoints
GET Get a list of the User's Documents
localhost:3000/api/documents?token=C3ZQnXWDUn4XPSTw6EqqDdRt
GET /api/documents?token=:user_token

Get a list of the current user's documents

HEADERS
Content-Typeapplication/json
AuthorizationBasic Og==

Sample Request
Get a list of the User's Documents
curl --request GET \
  --url 'http://localhost:3000/api/documents?token=C3ZQnXWDUn4XPSTw6EqqDdRt' \
  --header 'authorization: Basic Og==' \
  --header 'content-type: application/json'
POST Create a Document
localhost:3000/api/documents?token=C3ZQnXWDUn4XPSTw6EqqDdRt
POST /api/documents?token=:user_token

Requires doc_type

HEADERS
Content-Typeapplication/json
AuthorizationBasic Og==
BODY
{
	"doc_type" : "License"
}


Sample Request
Create a Document
curl --request POST \
  --url 'http://localhost:3000/api/documents?token=C3ZQnXWDUn4XPSTw6EqqDdRt' \
  --header 'authorization: Basic Og==' \
  --header 'content-type: application/json' \
  --data '{
	"doc_type" : "License"
}'
PATCH Edit a User's Document
localhost:3000/api/documents/:id?token=C3ZQnXWDUn4XPSTw6EqqDdRt
PATCH /api/documents/:id?token=:user_token

Edit a user's documents

HEADERS
Content-Typeapplication/json
AuthorizationBasic Og==
BODY
image


Sample Request
Edit a User's Document
curl --request PATCH \
  --url 'http://localhost:3000/api/documents/:id?token=C3ZQnXWDUn4XPSTw6EqqDdRt' \
  --header 'authorization: Basic Og==' \
  --header 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW'
DELETE Delete a User's Document
localhost:3000/api/documents/:id?token=C3ZQnXWDUn4XPSTw6EqqDdRt
DELETE /api/documents/:id?token=:user_token

Delete a user's documents

HEADERS
Content-Typeapplication/json
AuthorizationBasic Og==
BODY
image
