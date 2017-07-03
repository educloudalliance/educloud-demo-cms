class CmsController < ApplicationController
  def show
    @response = RestClient.get("#{ENV['BAZAAR_API_URL']}/cms/validate",
      params: { token: params[:token], access_token: params[:access_token] })
  end

  private

  def view_params
    params.permit(:token)
  end
end
