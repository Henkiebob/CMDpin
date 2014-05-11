class PinsController < ApplicationController
  
  def index
    @pins = Pin.all
  end

  def create
      #abort(pin_params.inspect)

      @pin = Pin.new(pin_params)
      @pin.user_id = current_user.id

      if pin_params[:api_image].present?
        @pin.remote_image_url = pin_params(:api_image)
        abort(@pin.remote_image_url)
      end

      if @pin.save
        redirect_to pins_path
      end
  end

  def new
    @pin = Pin.new()
    @minors = Minor.all
    @competences = Competence.all
  end

  def destroy
  end

  def show
    @pin = Pin.find(params[:id])
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :name, :link, :image, :api_image, { :minor_ids => [] }, { :competence_ids => [] })
  end
end
