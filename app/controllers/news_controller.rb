class NewsController < ApplicationController
  def index
    api_key = Rails.application.credentials.dig(:news_api, :api_key)
    @news_service = NewsService.new(api_key)
    @articles = @news_service.fetch_news['articles']
  end
end