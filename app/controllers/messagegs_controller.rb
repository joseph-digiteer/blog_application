class MessagegsController < ApplicationController
  before_action :set_messageg, only: %i[ show edit update destroy ]

  # GET /messagegs or /messagegs.json
  def index
    @messagegs = Messageg.all
  end

  # GET /messagegs/1 or /messagegs/1.json
  def show
  end

  # GET /messagegs/new
  def new
    @messageg = Messageg.new
  end

  # GET /messagegs/1/edit
  def edit
  end

  # POST /messagegs or /messagegs.json
  def create
    @messageg = Messageg.new(messageg_params)

    respond_to do |format|
      if @messageg.save
        format.html { redirect_to messageg_url(@messageg), notice: "Messageg was successfully created." }
        format.json { render :show, status: :created, location: @messageg }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @messageg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messagegs/1 or /messagegs/1.json
  def update
    respond_to do |format|
      if @messageg.update(messageg_params)
        format.html { redirect_to messageg_url(@messageg), notice: "Messageg was successfully updated." }
        format.json { render :show, status: :ok, location: @messageg }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @messageg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messagegs/1 or /messagegs/1.json
  def destroy
    @messageg.destroy!

    respond_to do |format|
      format.html { redirect_to messagegs_url, notice: "Messageg was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messageg
      @messageg = Messageg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def messageg_params
      params.require(:messageg).permit(:body)
    end
end
