class CustomersController < ApplicationController

  # API ENDPOINT /customers TO GET ALL CUSTOMERS WITH THEIR DATA.
  def index
    @customers = Customer.all
    render json: @customers
  end

  # API ENDPOINT /customer/:id TO GET AN SPECIFIC CUSTOMER WITH THEIR DATA.
  def show
    @customer = Customer.find(params[:id])
    render json: @customer
  end

  # API ENDPOINT /customer?name=:name&surname=:surname&email=:email&birthdate=:birthdate TO CREATE A NEW CUSTOMER.
  def create
    @customer = Customer.new(name: params[:name], surname: params[:surname], email: params[:email], birthdate: params[:birthdate])
    if @customer.save
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # API ENDPOINT /customer/:id?name=:name&surname=:surname&email=:email&birthdate=:birthdate TO UPDATE A CUSTOMER.
  def update
    @customer = Customer.find(params[:id])
    if @customer.update(name: params[:name], surname: params[:surname], email: params[:email], birthdate: params[:birthdate])
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # API ENDPOINT /customer/:id TO DELETE AN SPECIFIC CUSTOMER.
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    render json: "#{@customer.name} has been deleted!"
  end


end
