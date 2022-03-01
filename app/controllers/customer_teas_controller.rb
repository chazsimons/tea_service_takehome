class CustomerTeasController < ApplicationController

  def index
    if Customer.exists?(params[:id])
      render json: { subscriptions: CustomerTea.where(customer_id: params[:id]), status: 200 }
    else
      render json: { errors: "No customer found with that ID" }, status: 404
    end
  end

  def create
    subscription = CustomerTea.new(subscription_params)
    if subscription.save
      render json: { subscription: subscription }, status: 201
    else
      render json: { errors: 'Somethings gone wrong'}, status: 400
    end
  end

  private

  def subscription_params
    params.permit(:customer_id, :tea_id, :price, :frequency, :active)
  end
end
