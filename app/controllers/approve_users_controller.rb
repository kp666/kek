class ApproveUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?
  before_action :find_unapproved_users

  def index
  end

  def approve
    @users.find(params[:id]).update_attribute(:approved, true)
    redirect_to approve_users_path
  end

  def destroy
    @users.find(params[:id]).destroy
    redirect_to approve_users_path
  end

  private

  def find_unapproved_users
    @users = User.where(['approved IS NULL OR approved = ?', false])
  end

  def is_admin?
    unless current_user.role == 'admin'
      render status: :unauthorized, text: 'Unauthorized. Only admins can approve users.'
    end
  end
end
