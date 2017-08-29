class CmsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @response = RestClient.get("#{ENV['BAZAAR_API_URL']}/cms/validate",
      params: { token: params[:token], access_token: params[:access_token] })
  end

  private

  def view_params
    params.permit(:token)
  end
end
