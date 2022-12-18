class CeremoniesController < ApplicationController
  before_action :set_ceremony, only: %i[ show edit update destroy ]

  # GET /cerimonies or /cerimonies.json
  def index
    @ceremonies = Ceremony.all
  end

  # GET /cerimonies/1 or /cerimonies/1.json
  def show
  end

  # GET /cerimonies/new
  def new
    @ceremony = Ceremony.new
  end

  # GET /cerimonies/1/edit
  def edit
  end

  # POST /cerimonies or /cerimonies.json
  def create
    @ceremony = Ceremony.new(ceremony_params)

    respond_to do |format|
      if @ceremony.save
        format.html { redirect_to ceremony_url(@ceremony), notice: "Ceremony was successfully created." }
        format.json { render :show, status: :created, location: @ceremony }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ceremony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cerimonies/1 or /cerimonies/1.json
  def update
    respond_to do |format|
      if @ceremony.update(ceremony_params)
        format.html { redirect_to ceremony_url(@ceremony), notice: "Ceremony was successfully updated." }
        format.json { render :show, status: :ok, location: @ceremony }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ceremony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cerimonies/1 or /cerimonies/1.json
  def destroy
    @ceremony.destroy

    respond_to do |format|
      format.html { redirect_to cerimonies_url, notice: "Ceremony was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ceremony
      @ceremony = Ceremony.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ceremony_params
      params.require(:ceremony).permit(:title, :starts_at, :finish_at)
    end
end
