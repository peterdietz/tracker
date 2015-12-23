class UtilityCustomersController < ApplicationController
  before_action :set_utility_customer, only: [:show, :edit, :update, :destroy]

  # GET /utility_customers
  # GET /utility_customers.json
  def index
    @utility_customers = UtilityCustomer.all
  end

  # GET /utility_customers/1
  # GET /utility_customers/1.json
  def show
  end

  # GET /utility_customers/new
  def new
    @utility_customer = UtilityCustomer.new
  end

  # GET /utility_customers/1/edit
  def edit
  end

  # POST /utility_customers
  # POST /utility_customers.json
  def create
    @utility_customer = UtilityCustomer.new(utility_customer_params)

    respond_to do |format|
      if @utility_customer.save
        format.html { redirect_to @utility_customer, notice: 'Utility customer was successfully created.' }
        format.json { render :show, status: :created, location: @utility_customer }
      else
        format.html { render :new }
        format.json { render json: @utility_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utility_customers/1
  # PATCH/PUT /utility_customers/1.json
  def update
    respond_to do |format|
      if @utility_customer.update(utility_customer_params)
        format.html { redirect_to @utility_customer, notice: 'Utility customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @utility_customer }
      else
        format.html { render :edit }
        format.json { render json: @utility_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utility_customers/1
  # DELETE /utility_customers/1.json
  def destroy
    @utility_customer.destroy
    respond_to do |format|
      format.html { redirect_to utility_customers_url, notice: 'Utility customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utility_customer
      @utility_customer = UtilityCustomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utility_customer_params
      params.require(:utility_customer).permit(:utility_id, :user_id, :accountNumber)
    end
end
