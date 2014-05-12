class PinsController < ApplicationController
  
  def index
    @pins = Pin.all
  end

  def create
      #abort(pin_params.inspect)

      @pin = Pin.new(pin_params)
      @pin.user_id = current_user.id

      if @pin.save
        redirect_to pins_path
      end



  end

  def getMetaData
    page = MetaInspector.new(params[:url])

    @meta_information = []
    meta_image = page.meta["og:image"]
    meta_title = page.meta["og:title"]

    #first the og image
    if meta_image.nil?
        #if not then the twitter image
        meta_image = page.meta["twitter:image"]

        #still being a little bitch? first image i can find
        if meta_image.nil?
            meta_image = page.images[0]
        end
    end

    @meta_information.push(meta_image, meta_title)

    respond_to do |format|
      format.json { render json: @meta_information }
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
    params.require(:pin).permit(:title, :name, :link, :image, :url, { :minor_ids => [] }, { :competence_ids => [] })
  end

end
