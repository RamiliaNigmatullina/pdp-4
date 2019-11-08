module Api
  module V1
    class BaseController < ActionController::Base
      include Authentication

      protect_from_forgery with: :exception

      respond_to :json
    end
  end
end
