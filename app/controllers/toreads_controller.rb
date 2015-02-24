class ToreadsController < ApplicationController
  before_action :set_toread, only: [:show, :edit, :update, :destroy]

  # GET /toreads
  # GET /toreads.json
  def index
    @toreads = Toread.all
  end

  # GET /toreads/1
  # GET /toreads/1.json
  def show
  end

  # GET /toreads/new
  def new
    @toread = Toread.new
  end

  # GET /toreads/1/edit
  def edit
  end

  # POST /toreads
  # POST /toreads.json
  def create
    @toread = Toread.new(toread_params)

    respond_to do |format|
      if @toread.save
        format.html { redirect_to @toread, notice: 'Toread was successfully created.' }
        format.json { render :show, status: :created, location: @toread }
      else
        format.html { render :new }
        format.json { render json: @toread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toreads/1
  # PATCH/PUT /toreads/1.json
  def update
    respond_to do |format|
      if @toread.update(toread_params)
        format.html { redirect_to @toread, notice: 'Toread was successfully updated.' }
        format.json { render :show, status: :ok, location: @toread }
      else
        format.html { render :edit }
        format.json { render json: @toread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toreads/1
  # DELETE /toreads/1.json
  def destroy
    @toread.destroy
    respond_to do |format|
      format.html { redirect_to toreads_url, notice: 'Toread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toread
      @toread = Toread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toread_params
      params.require(:toread).permit(:title, :description, :read)
    end
end
