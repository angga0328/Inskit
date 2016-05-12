class MenurestoransController < ApplicationController
  before_action :set_menurestoran, only: [:show, :edit, :update, :destroy]

  # GET /menurestorans
  # GET /menurestorans.json
  def index
    @menurestorans = Menurestoran.all
  end

  # GET /menurestorans/1
  # GET /menurestorans/1.json
  def show
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end

  # GET /menurestorans/new
  def new
    @menurestoran = Menurestoran.new
  end

  # GET /menurestorans/1/edit
  def edit
  end

  # POST /menurestorans
  # POST /menurestorans.json
  def create
    @menurestoran = Menurestoran.new(menurestoran_params)

    respond_to do |format|
      if @menurestoran.save
        format.html { redirect_to @menurestoran, notice: 'Menurestoran was successfully created.' }
        format.json { render :show, status: :created, location: @menurestoran }
      else
        format.html { render :new }
        format.json { render json: @menurestoran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menurestorans/1
  # PATCH/PUT /menurestorans/1.json
  def update
    respond_to do |format|
      if @menurestoran.update(menurestoran_params)
        format.html { redirect_to @menurestoran, notice: 'Menurestoran was successfully updated.' }
        format.json { render :show, status: :ok, location: @menurestoran }
      else
        format.html { render :edit }
        format.json { render json: @menurestoran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menurestorans/1
  # DELETE /menurestorans/1.json
  def destroy
    @menurestoran.destroy
    respond_to do |format|
      format.html { redirect_to menurestorans_url, notice: 'Menurestoran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menurestoran
      @menurestoran = Menurestoran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menurestoran_params
      params.require(:menurestoran).permit(:restaurant_id, :wisata_id, :nama_menu, :foto)
    end
end
