class DaerahsController < ApplicationController
  before_action :set_daerah, only: [:show, :edit, :update, :destroy]

  # GET /daerahs
  # GET /daerahs.json
  def index
    @daerahs = Daerah.all
  end

  # GET /daerahs/1
  # GET /daerahs/1.json
  def show
    if params[:kategori_id]
      @wisatas = @daerah.wisatas.where(kategori_id: params[:kategori_id])
    else
      @wisatas = @daerah.wisatas.order(:cached_votes_up => :desc)
    end
  end

  # GET /daerahs/new
  def new
    @daerah = Daerah.new
  end

  # GET /daerahs/1/edit
  def edit
  end

  # POST /daerahs
  # POST /daerahs.json
  def create
    @daerah = Daerah.new(daerah_params)

    respond_to do |format|
      if @daerah.save
        format.html { redirect_to @daerah, notice: 'Daerah was successfully created.' }
        format.json { render :show, status: :created, location: @daerah }
      else
        format.html { render :new }
        format.json { render json: @daerah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daerahs/1
  # PATCH/PUT /daerahs/1.json
  def update
    respond_to do |format|
      if @daerah.update(daerah_params)
        format.html { redirect_to @daerah, notice: 'Daerah was successfully updated.' }
        format.json { render :show, status: :ok, location: @daerah }
      else
        format.html { render :edit }
        format.json { render json: @daerah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daerahs/1
  # DELETE /daerahs/1.json
  def destroy
    @daerah.destroy
    respond_to do |format|
      format.html { redirect_to daerahs_url, notice: 'Daerah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daerah
      @daerah = Daerah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daerah_params
      params.require(:daerah).permit(:nama, :foto)
    end
end
