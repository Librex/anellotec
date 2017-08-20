class SubscriptionsController < ApplicationController
  before_action :authenticate_member! 

  def create
    @subscription = current_member.subscriptions.create(subscription_params)       
    redirect_to @subscription.course, notice: "コースの受講希望を承りました。"
  end

  private
    def subscription_params         
      params.require(:subscription).permit(:price, :course_id)     
    end 
end
