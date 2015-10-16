class ShiftDetailsController < ApplicationController
  before_action :set_shift_detail, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js
  # GET /shift_details
  # GET /shift_details.json
  def index
      @shift_details = ShiftDetail.where(user: current_user)
  end

def list
      @shift_details = ShiftDetail.all
end
  # GET /shift_details/1
  # GET /shift_details/1.json
  def show
  end

  # GET /shift_details/new
  def new
    @shift_detail = ShiftDetail.new
  end

  # GET /shift_details/1/edit
  def edit
  end

  # POST /shift_details
  # POST /shift_details.json
  def create
    @shift_detail = ShiftDetail.new(shift_detail_params)
    if current_user.email != 'sonali14@gmail.com'
      @shift_detail.user_id = current_user.id
    end

    respond_to do |format|
      if @shift_detail.save
        format.html { redirect_to @shift_detail, notice: 'Shift detail was successfully created.' }
        format.json { render :show, status: :created, location: @shift_detail }
      else
        format.html { render :new }
        format.json { render json: @shift_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shift_details/1
  # PATCH/PUT /shift_details/1.json
  def update
    shift_detail_params[:user_id] = current_user.id
    respond_to do |format|
      if @shift_detail.update(shift_detail_params)
        format.html { redirect_to @shift_detail, notice: 'Shift detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift_detail }
      else
        format.html { render :edit }
        format.json { render json: @shift_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_details/1
  # DELETE /shift_details/1.json
  def destroy
    @shift_detail.destroy
    respond_to do |format|
      format.html { redirect_to shift_details_url, notice: 'Shift detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_shift_detail
    @shift_detail = ShiftDetail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def shift_detail_params
    params.require(:shift_detail).permit(:name, :start_time, :end_time, :shift_name, :description, :user_id)
  end
end
