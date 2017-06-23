class PhotographrsController < ApplicationController
  before_action :set_photographr, only: [:show, :edit, :update, :destroy]

  # GET /photographrs
  # GET /photographrs.json
  def index
    @photographrs = Photographr.all
  end

  # GET /photographrs/1
  # GET /photographrs/1.json
  def show
  end

  # GET /photographrs/new
  def new
    @photographr = Photographr.new
  end

  # GET /photographrs/1/edit
  def edit
  end

  # POST /photographrs
  # POST /photographrs.json
  def create
    @photographr = Photographr.new(photographr_params)

    respond_to do |format|
      if @photographr.save
        format.html { redirect_to @photographr, notice: 'Photographr was successfully created.' }
        format.json { render :show, status: :created, location: @photographr }
      else
        format.html { render :new }
        format.json { render json: @photographr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photographrs/1
  # PATCH/PUT /photographrs/1.json
  def update
    respond_to do |format|
      if @photographr.update(photographr_params)
        format.html { redirect_to @photographr, notice: 'Photographr was successfully updated.' }
        format.json { render :show, status: :ok, location: @photographr }
      else
        format.html { render :edit }
        format.json { render json: @photographr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photographrs/1
  # DELETE /photographrs/1.json
  def destroy
    @photographr.destroy
    respond_to do |format|
      format.html { redirect_to photographrs_url, notice: 'Photographr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photographr
      @photographr = Photographr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photographr_params
      params.require(:photographr).permit(:email, :fname, :lname, :phone, :address, :city, :state, :country, :birthdate)
    end
end
