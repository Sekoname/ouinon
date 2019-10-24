class RepondresController < ApplicationController
  before_action :set_repondre, only: [:show, :edit, :update, :destroy]

  # GET /repondres
  # GET /repondres.json
  def index
    @repondres = Repondre.all
  end

  # GET /repondres/1
  # GET /repondres/1.json
  def show
  end

  # GET /repondres/new
  def new
    @repondre = Repondre.new
  end

  # GET /repondres/1/edit
  def edit
  end

  # POST /repondres
  # POST /repondres.json
  def create
    @repondre = Repondre.new(repondre_params)

    respond_to do |format|
      if @repondre.save
        format.html { redirect_to @repondre, notice: 'Repondre was successfully created.' }
        format.json { render :show, status: :created, location: @repondre }
      else
        format.html { render :new }
        format.json { render json: @repondre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repondres/1
  # PATCH/PUT /repondres/1.json
  def update
    respond_to do |format|
      if @repondre.update(repondre_params)
        format.html { redirect_to @repondre, notice: 'Repondre was successfully updated.' }
        format.json { render :show, status: :ok, location: @repondre }
      else
        format.html { render :edit }
        format.json { render json: @repondre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repondres/1
  # DELETE /repondres/1.json
  def destroy
    @repondre.destroy
    respond_to do |format|
      format.html { redirect_to repondres_url, notice: 'Repondre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repondre
      @repondre = Repondre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repondre_params
      params.require(:repondre).permit(:user_id, :question_id)
    end
end
