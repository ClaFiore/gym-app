class MembersController < ApplicationController
  before_action :find_member, only: [:show, :edit, :update, :destroy]
  def index
    @members = Member.all
  end

  def show
  end

  def edit
  end

  def update
    @member.update(member_params)
    redirect_to member_path(@member)
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.create(member_params)
    redirect_to member_path(@member)
  end

  def destroy
    @member.destroy
    redirect_to members_path
  end

  private

  def find_member
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:name, :age)
  end

end
