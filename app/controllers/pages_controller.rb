class PagesController < ApplicationController

  def index
    @messages = Message.limit(20)
  end

end