class CruxhsController < ApplicationController
  layout "cruxhs"
  before_action :set_cruxh, only: [:show, :edit, :update, :destroy]

  # GET /cruxhs
  # GET /cruxhs.json
  def index
    @cruxhs = Cruxh.all
  end

  # GET /cruxhs/1
  # GET /cruxhs/1.json
  def show
  end

  # GET /cruxhs/new
  def new
    @cruxh = Cruxh.new
  end

  # GET /cruxhs/1/edit
  def edit
  end

  # POST /cruxhs
  # POST /cruxhs.json
  def create
    @cruxh = Cruxh.new(cruxh_params)

    respond_to do |format|
      if @cruxh.save
        format.html { redirect_to @cruxh, notice: 'Cruxh was successfully created.' }
        format.json { render :show, status: :created, location: @cruxh }
      else
        format.html { render :new }
        format.json { render json: @cruxh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cruxhs/1
  # PATCH/PUT /cruxhs/1.json
  def update
    respond_to do |format|
      if @cruxh.update(cruxh_params)
        format.html { redirect_to @cruxh, notice: 'Cruxh was successfully updated.' }
        format.json { render :show, status: :ok, location: @cruxh }
      else
        format.html { render :edit }
        format.json { render json: @cruxh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cruxhs/1
  # DELETE /cruxhs/1.json
  def destroy
    @cruxh.destroy
    respond_to do |format|
      format.html { redirect_to cruxhs_url, notice: 'Cruxh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cruxh
      @cruxh = Cruxh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cruxh_params
      params.require(:cruxh).permit(:email)
    end
end
