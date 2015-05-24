class HomeController < ApplicationController
  require 'open-uri'

  def index
    @record = TopRecord.create
  end
end
