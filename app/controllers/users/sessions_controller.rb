class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def create
    self.resource = warden.authenticate(auth_options)

    if resource
      sign_in(resource_name, resource)
      render json: { message: "Logged in", user: resource.as_json(only: %i[id email name]) }
    else
      render json: { message: "Invalid email or password" }, status: :unauthorized
    end
  end

  private

  def respond_to_on_destroy
    render json: { message: "Logged out" }
  end
end
