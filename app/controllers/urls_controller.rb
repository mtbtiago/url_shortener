class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def show
    begin
      @url_str = Url.make_url(params[:id])
      @url = Url.find(params[:id]) # raises an exception
      redirect_to(@url.long)
    rescue ActiveRecord::RecordNotFound
      render "bad_url"
    # moved to application level, see application_controller.rb
    # rescue Exception => e
    #   @error_desc = e.to_s
    #   render "internal_error"
    end
  end

  # private
  # def make_url(num)
  #   # converts num in url
  #   # ToDo: in which port we are?
  #   # 'http://localhost:3000/url/'+num.to_s
  #   urls_url+num.to_s
  # end

end
