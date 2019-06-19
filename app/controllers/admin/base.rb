class Admin::Base < ApplicationController
  before_action :admin_login_required

  private

  def admin_login_required
    raise Frobidden unless current_member&.administrator?
  end
end

