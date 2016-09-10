class Mobile::V1::UsersController < MobileController

  def index
    render json: User.all, each_serializer: Mobile::UserSerializer
  end
end
