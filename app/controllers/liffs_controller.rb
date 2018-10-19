class LiffsController < ApplicationController
  before_action :set_liff, only: [:show, :edit, :update, :destroy]

  # GET /liffs
  # GET /liffs.json
  def index
    @liffs = Liff.all
  end

  # GET /liffs/1
  # GET /liffs/1.json
  def show
  end

  # GET /liffs/new
  def new
    @liff = Liff.new
  end

  # GET /liffs/1/edit
  def edit
  end

  # POST /liffs
  # POST /liffs.json
  def create
    @liff = Liff.new(liff_params)

    respond_to do |format|
      if @liff.save
        format.html { redirect_to @liff, notice: 'Liff was successfully created.' }
        format.json { render :show, status: :created, location: @liff }
      else
        format.html { render :new }
        format.json { render json: @liff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liffs/1
  # PATCH/PUT /liffs/1.json
  def update
    respond_to do |format|
      if @liff.update(liff_params)
        format.html { redirect_to @liff, notice: 'Liff was successfully updated.' }
        format.json { render :show, status: :ok, location: @liff }
      else
        format.html { render :edit }
        format.json { render json: @liff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liffs/1
  # DELETE /liffs/1.json
  def destroy
    @liff.destroy
    respond_to do |format|
      format.html { redirect_to liffs_url, notice: 'Liff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liff
      @liff = Liff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liff_params
      params.require(:liff).permit(:title, :body)
    end
end
