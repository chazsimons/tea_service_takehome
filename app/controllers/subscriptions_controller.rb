class SubscriptionsController < ApplicationController

  def index
    if Customer.exists?(params[:id])
      render json: { subscriptions: Subscription.where(customer_id: params[:id]), status: 200 }
    else
      render json: { errors: "No customer found with that ID" }, status: 404
    end
  end

  def create
    subscription = Subscription.create(subscription_params)
    if subscription.save
      render json: { subscription: subscription }, status: 201
    else
      render json: { errors: subscription.errors.full_messages }, status: 400
    end
  end

  def update
    subscription = Subscription.find(params[:subscription_id])
    if subscription.update({active: params[:active]})
      render json: { subscription: "You've cancelled this subscription" }, status: 200
    else
      render json: { errors: supscription.errors.full_messages }, status: 400
    end
  end

  private

  def subscription_params
    params.permit(:customer_id, :tea_id, :price, :frequency, :active)
  end
end
