class Api::DotaController < ApplicationController
  def index
    @feature = HTTP.headers(
      "Authorization" => "Bearer #{Rails.application.credentials.pandascore[:api_key]}"
    ).get("https://api.pandascore.co/dota2/#{params[:feature]}").parse
  end
end
