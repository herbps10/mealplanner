class ShoppingController < ApplicationController
  def setup
    @days = Day.all
  end

  def list
    @directions = params["shopping"]["directions"] == "1" ? true : false

    @recipe_ids = strip_prefixes(params["shopping"]["recipe_ids"])

    @days = Day.all
    #render 'list', layout: 'simple'
  end

  private
    def strip_prefixes hash
      if hash.is_a?(Hash)
        return Hash[hash.map { |k, v| [get_id(k), strip_prefixes(v)] }]
      else
        return hash.map { |h| h.to_i }
      end
    end

    def get_id str
      str.gsub('day_', '').gsub('meal_', '').to_i
    end
end
