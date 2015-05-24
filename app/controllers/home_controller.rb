class HomeController < ApplicationController
  require 'open-uri'

  def new
    @record = TopRecord.create
    redirect_to action: 'show', id: @record.id
  end

  # returns the record with the passed id
  def show
    id = params[:id]
    @record = TopRecord.find(id)
  end
end
