class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    render json: { code: 200, message: 'Signed in successfully.', user: current_user }
  end

  def respond_to_on_destroy
    jwt_payload = JWT.decode(request.headers['Authorization'].split.last,
                             Rails.application.credentials.devise.fetch(:jwt_secret_key))[0]

    current_user = User.find(jwt_payload['sub'])
    if current_user
      render json: { code: 200, message: 'Signed out successfully.' }, status: :ok
    else
      render json: {
        code: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end
end
