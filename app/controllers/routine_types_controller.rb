class RoutineTypesController < ApplicationController
  before_action :set_routine_type, only: [:show, :edit, :update, :destroy]

  # GET /routine_types
  # GET /routine_types.json
  def index
    @routine_types = RoutineType.all
  end

  # GET /routine_types/1
  # GET /routine_types/1.json
  def show
  end

  # GET /routine_types/new
  def new
    @routine_type = RoutineType.new
  end

  # GET /routine_types/1/edit
  def edit
  end

  # POST /routine_types
  # POST /routine_types.json
  def create
    @routine_type = RoutineType.new(routine_type_params)

    respond_to do |format|
      if @routine_type.save
        format.html { redirect_to @routine_type, notice: 'Routine type was successfully created.' }
        format.json { render :show, status: :created, location: @routine_type }
      else
        format.html { render :new }
        format.json { render json: @routine_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routine_types/1
  # PATCH/PUT /routine_types/1.json
  def update
    respond_to do |format|
      if @routine_type.update(routine_type_params)
        format.html { redirect_to @routine_type, notice: 'Routine type was successfully updated.' }
        format.json { render :show, status: :ok, location: @routine_type }
      else
        format.html { render :edit }
        format.json { render json: @routine_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routine_types/1
  # DELETE /routine_types/1.json
  def destroy
    @routine_type.destroy
    respond_to do |format|
      format.html { redirect_to routine_types_url, notice: 'Routine type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routine_type
      @routine_type = RoutineType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def routine_type_params
      params.require(:routine_type).permit(:title)
    end
end
