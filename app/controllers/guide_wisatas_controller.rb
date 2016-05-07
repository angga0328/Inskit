class GuideWisatasController < ApplicationController
  before_action :authenticate_guide!

  def create
    @wisata = Wisata.find(params[:wisata_id])
    current_guide.guide(@wisata)
    redirect_to @wisata
  end

  def destroy
    @wisata = GuideWisata.find(params[:id]).wisata
    current_guide.unguide(@wisata)
    redirect_to @wisata
  end

end
