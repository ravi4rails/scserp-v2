class Students::CustomController < ApplicationController
  layout 'students'
  def news_disply
    @latest_news = News.all
  end

end