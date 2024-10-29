class ApplicationController < ActionController::API
  before_action :authenticate_api_key
  before_action :ensure_json_request

  private

  def authenticate_api_key
    api_key = request.headers['X-API-Key']
    unless api_key && api_key == 'secret'
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end

  def ensure_json_request
    return if request.headers['Accept'] =~ /json/
    render nothing: true, status: 406
  end
end
