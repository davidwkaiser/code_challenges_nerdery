require 'json'
class SnacksController < ApplicationController
  def index
    response = HTTParty.get('https://api-snacks.nerderylabs.com/v1/snacks/?ApiKey=bd634d7d-d5c9-427c-bc09-00767e231f31')
    response.each do |item|
      snack = Snack.find_by(api_id: item["id"])
      if snack
        snack.update( purchaselocations:  item["purchaseLocations"],
                      purchasecount:      item["purchaseCount"],
                      lastpurchasedate:   item["lastPurchaseDate"])
      else
        Snack.create( api_id:             item["id"],
                      name:               item["name"],
                      optional:           item["optional"],
                      purchaselocations:  item["purchaseLocations"],
                      purchasecount:      item["purchaseCount"],
                      lastpurchasedate:   item["lastPurchaseDate"])
      end
      # Snack.create(name: item["name"])
    end
    @permanent_snacks = Snack.where(optional: false)
    @suggested_snacks = Snack.where(optional: true)
  end
end