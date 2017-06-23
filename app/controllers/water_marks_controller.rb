class WaterMarksController < ApplicationController
  before_action :set_water_mark, only: [:show, :edit, :update, :destroy]

  # GET /water_marks
  # GET /water_marks.json
  def index
    @water_marks = WaterMark.all
  end

  # GET /water_marks/1
  # GET /water_marks/1.json
  def show
  end

  # GET /water_marks/new
  def new
    @water_mark = WaterMark.new
  end

  # GET /water_marks/1/edit
  def edit
  end

  # POST /water_marks
  # POST /water_marks.json
  def create
    @water_mark = WaterMark.new(water_mark_params)
    @photo = Photo.new
    respond_to do |format|
      if @water_mark.save
        format.html { redirect_to new_photo_path, notice: 'Water mark was successfully created.' }
        format.json { render :show, status: :created, location: new_photo_path }
      else
        format.html { render :new }
        format.json { render json: @water_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_marks/1
  # PATCH/PUT /water_marks/1.json
  def update
    respond_to do |format|
      if @water_mark.update(water_mark_params)
        format.html { redirect_to @water_mark, notice: 'Water mark was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_mark }
      else
        format.html { render :edit }
        format.json { render json: @water_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_marks/1
  # DELETE /water_marks/1.json
  def destroy
    @water_mark.destroy
    respond_to do |format|
      format.html { redirect_to water_marks_url, notice: 'Water mark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_mark
      @water_mark = WaterMark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_mark_params
      params.require(:water_mark).permit(:watermark_image)
    end
end
