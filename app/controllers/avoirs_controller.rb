class AvoirsController < ApplicationController
  before_action :set_avoir, only: [:show, :edit, :update, :destroy]

  # GET /avoirs
  # GET /avoirs.json
  def index
    @avoirs = Avoir.all
  end

  # GET /avoirs/1
  # GET /avoirs/1.json
  def show
  end

  # GET /avoirs/new
  def new
    @avoir = Avoir.new
  end

  # GET /avoirs/1/edit
  def edit
  end

  # POST /avoirs
  # POST /avoirs.json
  def create
    @avoir = Avoir.new(avoir_params)

    respond_to do |format|
      if @avoir.save
        format.html { redirect_to @avoir, notice: 'Avoir was successfully created.' }
        format.json { render :show, status: :created, location: @avoir }
      else
        format.html { render :new }
        format.json { render json: @avoir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avoirs/1
  # PATCH/PUT /avoirs/1.json
  def update
    respond_to do |format|
      if @avoir.update(avoir_params)
        format.html { redirect_to @avoir, notice: 'Avoir was successfully updated.' }
        format.json { render :show, status: :ok, location: @avoir }
      else
        format.html { render :edit }
        format.json { render json: @avoir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avoirs/1
  # DELETE /avoirs/1.json
  def destroy
    @avoir.destroy
    respond_to do |format|
      format.html { redirect_to avoirs_url, notice: 'Avoir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avoir
      @avoir = Avoir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avoir_params
      params.require(:avoir).permit(:reponse_id, :question_id)
    end
end
