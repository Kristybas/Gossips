require "test_helper"
class ForecastsController < ApplicationController

  test "show with an input address" do
    address = Faker::Address.full_address
    get forecasts_show_url, params: { address: address }
    assert_response :success
    assert_equal address, session[:address]
  end
end
#gem qui permet d'afficher en temps réel les forecasts.