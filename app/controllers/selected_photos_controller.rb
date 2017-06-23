class SelectedPhotosController < ApplicationController
  before_action :set_selected_photo, only: [:show, :edit, :update, :destroy]

  # GET /selected_photos
  # GET /selected_photos.json
  def index
    @selected_photos = SelectedPhoto.all
  end

  # GET /selected_photos/1
  # GET /selected_photos/1.json
  def show
  end

  # GET /selected_photos/new
  def new
    @selected_photo = SelectedPhoto.new
  end

  # GET /selected_photos/1/edit
  def edit
  end

  # POST /selected_photos
  # POST /selected_photos.json
  def create
    params[:selected_photo][:photo_id].each do |id|
      @selected_photo = SelectedPhoto.create(photo_id: id)
    end
    # @selected_photo = SelectedPhoto.new(selected_photo_params)
    
    respond_to do |format|
      if @selected_photo.save
        format.html { redirect_to selected_photos_path, notice: 'Selected photo was successfully created.' }
        format.json { render :show, status: :created, location: @selected_photo }
      else
        format.html { render :new }
        format.json { render json: @selected_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_photos/1
  # PATCH/PUT /selected_photos/1.json
  def update
    respond_to do |format|
      if @selected_photo.update(selected_photo_params)
        format.html { redirect_to @selected_photo, notice: 'Selected photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @selected_photo }
      else
        format.html { render :edit }
        format.json { render json: @selected_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_photos/1
  # DELETE /selected_photos/1.json
  def destroy
    @selected_photo.destroy
    respond_to do |format|
      format.html { redirect_to selected_photos_url, notice: 'Selected photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_photo
      @selected_photo = SelectedPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selected_photo_params
      params.require(:selected_photo).permit(:photo_id)
    end
end
