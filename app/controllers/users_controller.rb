class UsersController < ApplicationController
  def new
  end

  def create
    logger.debug params
  end
end
