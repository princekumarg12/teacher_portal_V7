class ProductsController < ApplicationController
  def index
    # Use the ApiClient class to fetch the product catalog
    @product_catalog = ProductApiClient.get_product_catalog
    # If the API call was successful, render the products

  end
end
