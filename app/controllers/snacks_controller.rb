require 'json'
class SnacksController < ApplicationController
  def index
    response = HTTParty.get('https://api-snacks.nerderylabs.com/v1/snacks/?ApiKey=bd634d7d-d5c9-427c-bc09-00767e231f31')
    # p response[1]["name"]
    response.each do |item|
      # p item["name"]
      Snack.create(name: item["name"])
    end
    @snacks = Snack.all
  end
end