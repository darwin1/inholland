class BiddingController < ApplicationController
  before_filter :ensure_login
  
  def bid
    bid = Bid.new(:amount => params[:amount])
    bid.item = Item.find(params[:item_id])
    bid.person = current_person
    
    if bid.save
      redirect_to :controller => "welcome"
    end
  end
end