class PagesController < ApplicationController

  def homepage
  end

  def request_invite
    ir = InviteRequest.new
    ir.email = params[:email]

    if ir.save
      render js: "alert('Successfully requested invite');"
    else
      render js: "alert('#{ir.errors.messages[:email].first}');"
    end

  end

end
