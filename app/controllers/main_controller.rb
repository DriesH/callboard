class MainController < ApplicationController
  def home
    # 4 links
    @characters = Character.all
  end

  def show_character
    # pagina van character
    # alle quotes
    @character = Character.find_by_name(params[:character])
  end

  def generator
    # record yourself
    # upload video
    # return url
  end

  def show
    @video = Video.find_by_token(params[:token])
  end

  def upload
    # generate unique token
    token = SecureRandom.urlsafe_base64
    while Video.exists?(token: token) do
      token = SecureRandom.urlsafe_base64
    end

    # save to database
    video = Video.new
    file = params[:files]
    file[0].original_filename = token + ".webm"
    video.video = file[0]
    video.token = token
    video.save
  end
end
