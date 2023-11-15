class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["bob", "ana", "jack", "john"]

    if params[:member]
      
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
