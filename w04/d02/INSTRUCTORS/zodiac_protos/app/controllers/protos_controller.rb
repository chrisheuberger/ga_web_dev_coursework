class ProtosController < ApplicationController
  def index
    @protos = Proto.all
  end
end