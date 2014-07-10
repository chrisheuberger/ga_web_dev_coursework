class ProtosController < ApplicationController
  def index
    @protos = Proto.all
  end
  def welcome
  end
  def show
    @proto = Proto.find(params[:id])
  end
end
