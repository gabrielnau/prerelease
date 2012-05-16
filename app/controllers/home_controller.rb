class HomeController < ApplicationController
  
  layout "front"
  
  def index
    @labels = current_user.labels
    if @labels.count == 1
      redirect_to label_path(@labels[0])
      return
    end
  end
end
