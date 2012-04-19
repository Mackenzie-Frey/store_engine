class CallsController < ApplicationController
  def create
    render :layout => "empty"
  end

  def new
    @client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
    @account = @client.account
    @call = @account.calls.create({:from => '5866904041',
      :to => '5862914303', :url => calls_url })
    puts @message
    redirect_to calls_path
  end

  def index
  end

end
