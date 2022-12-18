class CeremonyPartsController < ApplicationController
  before_action :set_ceremony_part, only: %i[ show edit update destroy ]

  # GET /ceremony_parts or /ceremony_parts.json
  def index
    @ceremony_parts = CeremonyPart.all
  end

  # GET /ceremony_parts/1 or /ceremony_parts/1.json
  def show
  end

  # GET /ceremony_parts/new
  def new
    @ceremony_part = CeremonyPart.new
  end

  # GET /ceremony_parts/1/edit
  def edit
  end

  # POST /ceremony_parts or /ceremony_parts.json
  def create
    @ceremony_part = CeremonyPart.new(ceremony_part_params)

    respond_to do |format|
      if @ceremony_part.save
        format.html { redirect_to ceremony_part_url(@ceremony_part), notice: "Cerymony part was successfully created." }
        format.json { render :show, status: :created, location: @ceremony_part }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ceremony_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ceremony_parts/1 or /ceremony_parts/1.json
  def update
    respond_to do |format|
      if @ceremony_part.update(ceremony_part_params)
        format.html { redirect_to ceremony_part_url(@ceremony_part), notice: "Cerymony part was successfully updated." }
        format.json { render :show, status: :ok, location: @ceremony_part }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ceremony_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ceremony_parts/1 or /ceremony_parts/1.json
  def destroy
    @ceremony_part.destroy

    respond_to do |format|
      format.html { redirect_to ceremony_parts_url, notice: "Cerymony part was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ceremony_part
      @ceremony_part = CeremonyPart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ceremony_part_params
      params.require(:ceremony_part).permit(:ceremony_id, :title, :external_url, :notes)
    end
end
