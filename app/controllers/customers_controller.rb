class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    render json: @customers
  end

  def show
    @customer = Customer.find(params[:id])
    render json: @customer
  end

  def create
    @customer = Customer.new(name: params[:name], surname: params[:surname], email: params[:email], birthdate: params[:birthdate])
    if @customer.save
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(name: params[:name], surname: params[:surname], email: params[:email], birthdate: params[:birthdate])
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    render json: "#{@customer.name} has been deleted!"
  end


end
