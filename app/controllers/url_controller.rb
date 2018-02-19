class UrlController < ApplicationController
  def index
    @urls = Url.all
    @url = Url.new
  end

  def show
    @url = short_url
    redirect_to @url.name
  end

  def create
    @url = Url.new(url_params)
    @url.short = Url.random_string
    @url.save
    redirect_to root_path

  end
  private

    def url_params
    params.require(:url).permit(:name)
    end

    def short_url
      @url = Url.find_by(short: params[:short])
    end


end
