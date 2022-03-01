class CustomerTeasController < ApplicationController

  def index
    if Customer.exists?(params[:id])
      render json: { subscriptions: CustomerTea.where(customer_id: params[:id]), status: 200 }
    else
      render json: { errors: "No customer found with that id", status: 404 }
    end
  end
end
