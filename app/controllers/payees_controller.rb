class PayeesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create
    render :index
  end

  def edit
  end

  def update
    render :show
  end

  def show
  end

  def destroy
    render :index
  end
end
