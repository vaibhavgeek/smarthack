class HomeController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def update_customer
  	PrivatePub.publish_to "/messages/new", :messages => { :data => params["data"] , :typeo => params["q"]}
  end
end
