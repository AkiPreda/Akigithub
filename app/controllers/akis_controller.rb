class AkisController < ApplicationController
  before_action :set_aki, only: [:show, :edit, :update, :destroy]

  # GET /akis
  # GET /akis.json
  def index
    @akis = Aki.all
  end

  # GET /akis/1
  # GET /akis/1.json
  def show
  end

  # GET /akis/new
  def new
    @aki = Aki.new
  end

  # GET /akis/1/edit
  def edit
  end

  # POST /akis
  # POST /akis.json
  def create
    @aki = Aki.new(aki_params)

    respond_to do |format|
      if @aki.save
        format.html { redirect_to @aki, notice: 'Aki was successfully created.' }
        format.json { render :show, status: :created, location: @aki }
      else
        format.html { render :new }
        format.json { render json: @aki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /akis/1
  # PATCH/PUT /akis/1.json
  def update
    respond_to do |format|
      if @aki.update(aki_params)
        format.html { redirect_to @aki, notice: 'Aki was successfully updated.' }
        format.json { render :show, status: :ok, location: @aki }
      else
        format.html { render :edit }
        format.json { render json: @aki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akis/1
  # DELETE /akis/1.json
  def destroy
    @aki.destroy
    respond_to do |format|
      format.html { redirect_to akis_url, notice: 'Aki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aki
      @aki = Aki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aki_params
      params.require(:aki).permit(:title, :body)
    end
end
