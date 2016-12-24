class ShopsController < ApplicationController
  def list
    @shops = Shop.all
    end

end
