class FlimsController < ApplicationController
  before_action :set_flim, only: [:show, :edit, :update, :destroy]

  # GET /flims
  # GET /flims.json
  def index
    @flims = Flim.all
  end

  # GET /flims/1
  # GET /flims/1.json
  def show
  end

  # GET /flims/new
  def new
    @flim = Flim.new
  end

  # GET /flims/1/edit
  def edit
  end

  # POST /flims
  # POST /flims.json
  def create
    @flim = Flim.new(flim_params)

    respond_to do |format|
      if @flim.save
        format.html { redirect_to @flim, notice: 'Flim was successfully created.' }
        format.json { render :show, status: :created, location: @flim }
      else
        format.html { render :new }
        format.json { render json: @flim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flims/1
  # PATCH/PUT /flims/1.json
  def update
    respond_to do |format|
      if @flim.update(flim_params)
        format.html { redirect_to @flim, notice: 'Flim was successfully updated.' }
        format.json { render :show, status: :ok, location: @flim }
      else
        format.html { render :edit }
        format.json { render json: @flim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flims/1
  # DELETE /flims/1.json
  def destroy
    @flim.destroy
    respond_to do |format|
      format.html { redirect_to flims_url, notice: 'Flim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flim
      @flim = Flim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flim_params
      params.require(:flim).permit(:title, :description, :movie_length, :director, :rating)
    end
end
