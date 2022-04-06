## Customer relationship management API

> Code Sherpas Backend Challenge, In this phase we will ask you to build a web application. The objective is to create a HTTP API to manage customer data for a small shop. It will work as the backend for a CRM graphical interface that is being developed by a different team. As a developer of the backend project, you will be in charge of the API design and implementation. API must have the following capabilities:

## Built With

Ruby >= 3.0.0

Rails >= 7.0.0

## Live Server

- Try out the application here: [Customers-API](https://customers-api-challenge.herokuapp.com/)

## Getting Started

- To get a local copy of the repository please run the following commands on your terminal:
   ```
   git clone https://github.com/ramiaquista/Code-Sherpas-Challenge
   ```
## Features

### In this application you can:
- Create a new customer. A customer must have the following attributes: name, surname, email and birthdate. ( # API ENDPOINT /customer?name=:name&surname=:surname&email=:email&birthdate=:birthdate )
- Get a single customer with all the attributes mentioned above. (  # API ENDPOINT /customer/:id )
- Get all customers. For each customer, the same information must be obtained as in the previous point. ( # API ENDPOINT /customers )
- Update all the attributes (at once) of an existing customer mentioned above. ( # API ENDPOINT /customer/:id?name=:name&surname=:surname&email=:email&birthdate=:birthdate )
- Delete an existing customer. (  # API ENDPOINT /customer/:id )
## Author 

👤 **Ramiro Aquistapace**

- GitHub: [@ramiaquista](https://github.com/ramiaquista)
- Twitter: [@ramiaq1](https://twitter.com/ramiaq1)
- LinkedIn: [RamiroAquistapace](https://www.linkedin.com/in/ramiro-aquistapace-32b61b204/)

