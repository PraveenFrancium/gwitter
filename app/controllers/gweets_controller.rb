class GweetsController < ApplicationController
  before_action :set_gweet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /gweets
  # GET /gweets.json
  def index
    @gweets = Gweet.all
    
  end

  # GET /gweets/1
  # GET /gweets/1.json
  def show
    
  end

  # GET /gweets/new
  def new
    @gweet = current_user.gweets.build
  end

  # GET /gweets/1/edit
  def edit
  end

  # POST /gweets
  # POST /gweets.json
  def create
    @gweet = current_user.gweets.build(gweet_params)

    respond_to do |format|
      if @gweet.save
        format.html { redirect_to @gweet, notice: 'Gweet was successfully created.' }
        format.json { render :show, status: :created, location: @gweet }
      else
        format.html { render :new }
        format.json { render json: @gweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gweets/1
  # PATCH/PUT /gweets/1.json
  def update
    respond_to do |format|
      if @gweet.update(gweet_params)
        format.html { redirect_to @gweet, notice: 'Gweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @gweet }
      else
        format.html { render :edit }
        format.json { render json: @gweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gweets/1
  # DELETE /gweets/1.json
  def destroy
    @gweet.destroy
    respond_to do |format|
      format.html { redirect_to gweets_url, notice: 'Gweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gweet
      @gweet = Gweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gweet_params
      params.require(:gweet).permit(:post)
    end
end
