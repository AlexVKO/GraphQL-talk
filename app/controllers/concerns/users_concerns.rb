module UsersConcerns
  extend ActiveSupport::Concern

  def index
    render json: User.all
  end
end
