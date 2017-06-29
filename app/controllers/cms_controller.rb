class CmsController < ApplicationController
  def show
    @response = HTTParty.get("#{ENV['BAZAAR_API_URL']}/cms/validate",
      query: { token: params[:token], access_token: params[:access_token] })
  end

  private

  def view_params
    params.permit(:token)
  end
end
