class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = current_user.customers
      .search(params[:search])
      .filter_by_status(params[:status])
      .order(params[:sort_by] || 'name')
      .page(params[:page]).per(10)
  end

  def show
    @notes = @customer.notes.page(params[:page]).per(5)
    @note = Note.new(customer: @customer)
  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def create
    @customer = current_user.customers.new(customer_params)

    if @customer.save
      redirect_to @customer, notice: t('customers.created')
    else
      render :new
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer, notice: t('customers.updated')
    else
      render :edit
    end
  end

  def destroy
    @customer.destroy
    redirect_to customers_url, notice: t('customers.destroyed')
  end

  private
  
  def set_customer
    @customer = current_user.customers.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :email, :phone, :company, :status)
  end
end
