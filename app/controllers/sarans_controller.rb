class SaransController < ApplicationController
  before_action :set_saran, only: [:show, :edit, :update, :destroy]

  # GET /sarans
  # GET /sarans.json
  def index
    @sarans = Saran.all
  end

  # GET /sarans/1
  # GET /sarans/1.json
  def show
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
  end

  # GET /sarans/new
  def new
    @notifications = current_user != nil ? current_user.mailbox.notifications : nil
    @saran = Saran.new
  end

  # GET /sarans/1/edit
  def edit
    
  end

  # POST /sarans
  # POST /sarans.json
  def create
    @saran = Saran.new(saran_params)

    respond_to do |format|
      if @saran.save
        format.html { redirect_to @saran, notice: 'Saran was successfully created.' }
        format.json { render :show, status: :created, location: @saran }
      else
        format.html { render :new }
        format.json { render json: @saran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sarans/1
  # PATCH/PUT /sarans/1.json
  def update
    respond_to do |format|
      if @saran.update(saran_params)
        format.html { redirect_to @saran, notice: 'Saran was successfully updated.' }
        format.json { render :show, status: :ok, location: @saran }
      else
        format.html { render :edit }
        format.json { render json: @saran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sarans/1
  # DELETE /sarans/1.json
  def destroy
    @saran.destroy
    respond_to do |format|
      format.html { redirect_to sarans_url, notice: 'Saran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saran
      @saran = Saran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saran_params
      params.require(:saran).permit(:nama, :email, :pesan)
    end
end
