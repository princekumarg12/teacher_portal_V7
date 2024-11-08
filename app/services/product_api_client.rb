require 'faraday'
require 'json'

class ProductApiClient
  def self.get_product_catalog
    conn = Faraday.new(
      url: 'https://www.casestry.com/v1/items',
      request: { timeout: 10, open_timeout: 5 }
    ) do |faraday|
      # faraday.headers['accept'] = 'application/json'  # Set the 'accept' header
      faraday.headers['x-api-key'] = 'd04d91e328a5495c6026e045be694b9b'  # API key header
    end

    # Make the GET request
    response = conn.get

    if response.status == 200
      # Parse and return the JSON response
      JSON.parse(response.body)
    else
      # Return error information if request fails
      { error: "Failed to fetch products", status: response.status, body: response.body }
    end
  end
end

# Example usage:
# catalog = ProductApiClient.get_product_catalog
# puts catalog
