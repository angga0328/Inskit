class WisatasController < ApplicationController
  before_action :set_wisata, only: [:show, :edit, :update, :destroy, :like, :dislike, :album]
  before_action :authenticate_user!, except: [:index, :show, :edit, :update, :destroy, :album]

  # GET /wisatas
  # GET /wisatas.json
  def index
    if params[:search]
      @wisatas = Wisata.search(params[:search]).order(:cached_votes_up => :desc)
    else
      @wisatas = Wisata.all.order(:cached_votes_up => :desc)
    end
  end
  
  def album
    @reviews = @wisata.reviews
  end
  
  
  # GET /wisatas/1
  # GET /wisatas/1.json
  def show
    @reviews = @wisata.reviews.order('created_at DESC').page(params[:page]).per_page(10)
    if user_signed_in?
      @review = current_user.reviews.build
    end
  end

  def like
    @wisata.upvote_by current_user
    redirect_to :back
  end

  def dislike
    @wisata.downvote_by current_user
    redirect_to :back
  end

  # GET /wisatas/new
  def new
    @wisata = Wisata.new
  end

  # GET /wisatas/1/edit
  def edit
  end

  # POST /wisatas
  # POST /wisatas.json
  def create
    @wisata = Wisata.new(wisata_params)

    respond_to do |format|
      if @wisata.save
        format.html { redirect_to @wisata, notice: 'Wisata was successfully created.' }
        format.json { render :show, status: :created, location: @wisata }
      else
        format.html { render :new }
        format.json { render json: @wisata.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wisatas/1
  # PATCH/PUT /wisatas/1.json
  def update
    respond_to do |format|
      if @wisata.update(wisata_params)
        format.html { redirect_to @wisata, notice: 'Wisata was successfully updated.' }
        format.json { render :show, status: :ok, location: @wisata }
      else
        format.html { render :edit }
        format.json { render json: @wisata.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wisatas/1
  # DELETE /wisatas/1.json
  def destroy
    @wisata.destroy
    respond_to do |format|
      format.html { redirect_to wisatas_url, notice: 'Wisata was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wisata
      @wisata = Wisata.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wisata_params
      params.require(:wisata).permit(:nama, :alamat, :deskripsi, :daerah_id, :kategori_id, :telp, :foto, :harga, :longitude, :latitude, :jambuka, :fulldeskripsi, :tips, :transportasi)
    end
end
