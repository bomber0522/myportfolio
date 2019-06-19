class MembersController < ApplicationController
  before_action :login_required
  
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end
end
