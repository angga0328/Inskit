class AlbumfotorestoransController < ApplicationController
  before_action :set_albumfotorestoran, only: [:show, :edit, :update, :destroy]

  # GET /albumfotorestorans
  # GET /albumfotorestorans.json
  def index
    @albumfotorestorans = Albumfotorestoran.all
  end

  # GET /albumfotorestorans/1
  # GET /albumfotorestorans/1.json
  def show
  end

  # GET /albumfotorestorans/new
  def new
    @albumfotorestoran = Albumfotorestoran.new
  end

  # GET /albumfotorestorans/1/edit
  def edit
  end

  # POST /albumfotorestorans
  # POST /albumfotorestorans.json
  def create
    @albumfotorestoran = Albumfotorestoran.new(albumfotorestoran_params)

    respond_to do |format|
      if @albumfotorestoran.save
        format.html { redirect_to @albumfotorestoran, notice: 'Albumfotorestoran was successfully created.' }
        format.json { render :show, status: :created, location: @albumfotorestoran }
      else
        format.html { render :new }
        format.json { render json: @albumfotorestoran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumfotorestorans/1
  # PATCH/PUT /albumfotorestorans/1.json
  def update
    respond_to do |format|
      if @albumfotorestoran.update(albumfotorestoran_params)
        format.html { redirect_to @albumfotorestoran, notice: 'Albumfotorestoran was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumfotorestoran }
      else
        format.html { render :edit }
        format.json { render json: @albumfotorestoran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumfotorestorans/1
  # DELETE /albumfotorestorans/1.json
  def destroy
    @albumfotorestoran.destroy
    respond_to do |format|
      format.html { redirect_to albumfotorestorans_url, notice: 'Albumfotorestoran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumfotorestoran
      @albumfotorestoran = Albumfotorestoran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumfotorestoran_params
      params.require(:albumfotorestoran).permit(:restaurant_id, :foto)
    end
end
