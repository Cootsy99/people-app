class CitizenshipsController < ApplicationController
  before_action :set_citizenship, only: %i[ show edit update destroy ]

  # GET /citizenships or /citizenships.json
  def index
    @citizenships = Citizenship.all
  end

  # GET /citizenships/1 or /citizenships/1.json
  def show
  end

  # GET /citizenships/new
  def new
    @citizenship = Citizenship.new
  end

  # GET /citizenships/1/edit
  def edit
  end

  # POST /citizenships or /citizenships.json
  def create
    @citizenship = Citizenship.new(citizenship_params)

    respond_to do |format|
      if @citizenship.save
        format.html { redirect_to citizenship_url(@citizenship), notice: "Citizenship was successfully created." }
        format.json { render :show, status: :created, location: @citizenship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @citizenship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citizenships/1 or /citizenships/1.json
  def update
    respond_to do |format|
      if @citizenship.update(citizenship_params)
        format.html { redirect_to citizenship_url(@citizenship), notice: "Citizenship was successfully updated." }
        format.json { render :show, status: :ok, location: @citizenship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @citizenship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citizenships/1 or /citizenships/1.json
  def destroy
    @citizenship.destroy

    respond_to do |format|
      format.html { redirect_to citizenships_url, notice: "Citizenship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citizenship
      @citizenship = Citizenship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def citizenship_params
      params.require(:citizenship).permit(:country_id, :person_id)
    end
end
