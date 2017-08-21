class SubscriptionsController < ApplicationController
  before_action :authenticate_member! 

  def create
    @subscription = current_member.subscriptions.create(subscription_params)       
    redirect_to @subscription.course, notice: "購入処理が完了しました。"
  end

  def purchase_history
    @purchases = current_member.subscriptions
  end


  private
    def subscription_params         
      params.require(:subscription).permit(:price, :course_id)     
    end 
end
