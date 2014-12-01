class EmailerController < ApplicationController
  def send_email
    UserMailer.general(params[:body], params[:subject], User.where(id: params[:users][:ids])).deliver
    redirect_to new_email_path
  end
end
