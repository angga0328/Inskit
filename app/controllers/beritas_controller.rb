class BeritasController < ApplicationController
  before_action :set_berita, only: [:show, :edit, :update, :destroy]

  # GET /beritas
  # GET /beritas.json
  def index
    @beritas = Berita.all
  end

  # GET /beritas/1
  # GET /beritas/1.json
  def show
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end

  # GET /beritas/new
  def new
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
    @berita = Berita.new
  end

  # GET /beritas/1/edit
  def edit
  end

  # POST /beritas
  # POST /beritas.json
  def create
    @berita = Berita.new(berita_params)

    respond_to do |format|
      if @berita.save
        format.html { redirect_to @berita, notice: 'Berita was successfully created.' }
        format.json { render :show, status: :created, location: @berita }
      else
        format.html { render :new }
        format.json { render json: @berita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beritas/1
  # PATCH/PUT /beritas/1.json
  def update
    respond_to do |format|
      if @berita.update(berita_params)
        format.html { redirect_to @berita, notice: 'Berita was successfully updated.' }
        format.json { render :show, status: :ok, location: @berita }
      else
        format.html { render :edit }
        format.json { render json: @berita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beritas/1
  # DELETE /beritas/1.json
  def destroy
    @berita.destroy
    respond_to do |format|
      format.html { redirect_to beritas_url, notice: 'Berita was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_berita
      @berita = Berita.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def berita_params
      params.require(:berita).permit(:title, :content, :foto)
    end
end
