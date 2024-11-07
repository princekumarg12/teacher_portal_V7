require "httparty"

class NewsService
  include HTTParty
  base_uri "https://newsapi.org/v2"
  # base_uri 'https://newsapi.org/v2/top-headlines?country=us&category=business&pageSize=4&page=1&apiKey=9af9fbefa6e74ad7a07cf42df3abca3e'

  def initialize(api_key)
    @api_key = api_key
  end

  def fetch_news
    response = self.class.get("/top-headlines", query: { country: "us", apiKey: @api_key })
    response.parsed_response
  end
end
