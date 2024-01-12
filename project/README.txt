## Author Info

Name: Ramesh Pandey
Email: ramesh.pandey@tuni.fi

## Date

Date: 12.01.2024

## Instructions for Setup and Run

NOTE: *before starting the setup check if you have node.js in your machine
with command "node -v"*

1. Open the appropriate terminal or command prompt.
2. Give command "npm init -y" to initialize 'package.json' if there isn't any.
3. Give command "npm install express" This command will download and install the
'express' module, and it will be added to your package.json file as a dependency.
4. After the installation is complete give command "node server.js".
This will start your server on localhost:8000.


## HTTP request through terminal/command


         curl --silent --include http://localhost:8000/users     # All
         curl --silent --include http://localhost:8000/users/1   # by ID

        # by Last Name and department
        url --silent --include http://localhost:8000/users/?last_name=Doe&dept=10


## For CRUD operations

1. Open the Postman and set the request type to HTTP.
2. GET: Click on the scroll down button and select the "GET" Method,
Set the end point to "http://localhost:8000/users", click on the SEND button.
This should list all the users saved on the database.db.
you can also see the users on the server output on the terminal to cross check,
since there are logs used for checking.

For specific search:
Use GET method with end point "http://localhost:8000/users/2" for user id 2.
"http://localhost:8000/users/?first_name=Rohan&last_name=Dutta"
to search with first name or with last name.


3. POST: select the POST method from the dropdown, keep the same end point,
like in previous operation "http://localhost:8000/users",
click on "body" select "raw", select "JSON" and provide JSON in following format:

{
            "first_name": "Rohan",
            "last_name": "Dutta",
            "city": "Kolkata",
            "department": 20
        }

Finally, click on the SEND button.

4. PATCH: This is used to update the partial part of the user data in the database.
select "PATCH" from the drop down, set the end point to the targeted user ID.
for example for user ID 2: "http://localhost:8000/users/2".
Check and ADD the header "Key = Content-Type", "Value = application/json" if not present.
put the info you want to edit in following format:

{
            "first_name": "Mohan",
            "last_name": "Dutta"
}

Finally, click on the SEND button.

After that confirm the changes for that user by:
GET method "http://localhost:8000/users/2".

5. PUT: To change the whole data of the specific user use PUT method,
for example for the user id 2, select PUT method from dropdown button,
after that use end point "http://localhost:8000/users/2" and for example
use the body as below to be edited:

{
            "first_name": "Sohan",
            "last_name": "Mutta",
            "city": "Goa",
            "department": 50
        }

after that, click on the SEND button and Finally, confirm the changes by GET method.

6. DELETE: to delete the data of the perticular user,
first select the DELETE method from the drop down button,
select the desired user to be deleted, for example for the user id 2:
"http://localhost:8000/users/2 and click on the SEND button.
confiem the changes by GET method.




