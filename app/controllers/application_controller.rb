class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def home
  end
  
  def partial
    # This data will be passed to the partial as local variable for demonstration purposes,
    # the variable could be used in the partial directly    
    @events = Event.all.to_gmaps4rails do |event, marker|
      marker.title        event.title
      marker.infowindow   event.description
    end
    
    render :layout => 'yieldscripts'
  end
  
  def button
  end
  
  def javascript
    respond_to do |format|
      format.js { render :layout => false }
    end  
  end    
end