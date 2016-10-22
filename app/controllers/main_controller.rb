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

  def get_token
    token = SecureRandom.urlsafe_base64

    while Video.exists?(token: @token) do
      token = SecureRandom.urlsafe_base64
    end

    @data = { token: "#{token}" }.to_json

    respond_to do |format|
      format.json { render json: @data }
    end
  end

  def generator
    @quote = Quote.find(params[:quote])
  end

  def show
    @video = Video.find_by_token(params[:token])
    @quote = @video.quote
  end

  def upload
    # save to database
    video = Video.new
    file = params[:files]
    token = params[:token]
    file[0].original_filename = "#{token}.webm"
    video.video = file[0]
    video.token = token
    video.quote_id = params[:quote]
    video.save
    render nothing: true
  end
end
