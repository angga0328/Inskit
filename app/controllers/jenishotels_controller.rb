class JenishotelsController < ApplicationController
  before_action :set_jenishotel, only: [:show, :edit, :update, :destroy]

  # GET /jenishotels
  # GET /jenishotels.json
  def index
    @jenishotels = Jenishotel.all
  end

  # GET /jenishotels/1
  # GET /jenishotels/1.json
  def show
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end

  # GET /jenishotels/new
  def new
    @jenishotel = Jenishotel.new
  end

  # GET /jenishotels/1/edit
  def edit
  end

  # POST /jenishotels
  # POST /jenishotels.json
  def create
    @jenishotel = Jenishotel.new(jenishotel_params)

    respond_to do |format|
      if @jenishotel.save
        format.html { redirect_to @jenishotel, notice: 'Jenishotel was successfully created.' }
        format.json { render :show, status: :created, location: @jenishotel }
      else
        format.html { render :new }
        format.json { render json: @jenishotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jenishotels/1
  # PATCH/PUT /jenishotels/1.json
  def update
    respond_to do |format|
      if @jenishotel.update(jenishotel_params)
        format.html { redirect_to @jenishotel, notice: 'Jenishotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @jenishotel }
      else
        format.html { render :edit }
        format.json { render json: @jenishotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jenishotels/1
  # DELETE /jenishotels/1.json
  def destroy
    @jenishotel.destroy
    respond_to do |format|
      format.html { redirect_to jenishotels_url, notice: 'Jenishotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jenishotel
      @jenishotel = Jenishotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jenishotel_params
      params.require(:jenishotel).permit(:hotel_id, :jenis_kamar, :foto)
    end
end
