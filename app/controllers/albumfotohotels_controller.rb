class AlbumfotohotelsController < ApplicationController
  before_action :set_albumfotohotel, only: [:show, :edit, :update, :destroy]

  # GET /albumfotohotels
  # GET /albumfotohotels.json
  def index
    @albumfotohotels = Albumfotohotel.all
  end

  # GET /albumfotohotels/1
  # GET /albumfotohotels/1.json
  def show
  end

  # GET /albumfotohotels/new
  def new
    @albumfotohotel = Albumfotohotel.new
  end

  # GET /albumfotohotels/1/edit
  def edit
  end

  # POST /albumfotohotels
  # POST /albumfotohotels.json
  def create
    @albumfotohotel = Albumfotohotel.new(albumfotohotel_params)

    respond_to do |format|
      if @albumfotohotel.save
        format.html { redirect_to @albumfotohotel, notice: 'Albumfotohotel was successfully created.' }
        format.json { render :show, status: :created, location: @albumfotohotel }
      else
        format.html { render :new }
        format.json { render json: @albumfotohotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumfotohotels/1
  # PATCH/PUT /albumfotohotels/1.json
  def update
    respond_to do |format|
      if @albumfotohotel.update(albumfotohotel_params)
        format.html { redirect_to @albumfotohotel, notice: 'Albumfotohotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumfotohotel }
      else
        format.html { render :edit }
        format.json { render json: @albumfotohotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumfotohotels/1
  # DELETE /albumfotohotels/1.json
  def destroy
    @albumfotohotel.destroy
    respond_to do |format|
      format.html { redirect_to albumfotohotels_url, notice: 'Albumfotohotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumfotohotel
      @albumfotohotel = Albumfotohotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumfotohotel_params
      params.require(:albumfotohotel).permit(:hotel_id, :foto)
    end
end
