class Api::V1::ClassroomsController < ApplicationController
  before_action :set_api_v1_classroom, only: %i[ show update destroy ]

  # GET /api/v1/classrooms
  # GET /api/v1/classrooms.json
  def index
    @api_v1_classrooms = Api::V1::Classroom.all

    render json: @api_v1_classrooms
  end

  # GET /api/v1/classrooms/1
  # GET /api/v1/classrooms/1.json
  def show
    render json: @api_v1_classroom
  end

  # POST /api/v1/classrooms
  # POST /api/v1/classrooms.json
  def create
    @api_v1_classroom = Api::V1::Classroom.new(api_v1_classroom_params)

    if @api_v1_classroom.save
      render :show, status: :created, location: @api_v1_classroom
    else
      render json: @api_v1_classroom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/classrooms/1
  # PATCH/PUT /api/v1/classrooms/1.json
  def update
    if @api_v1_classroom.update(api_v1_classroom_params)
      render :show, status: :ok, location: @api_v1_classroom
    else
      render json: @api_v1_classroom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/classrooms/1
  # DELETE /api/v1/classrooms/1.json
  def destroy
    @api_v1_classroom.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_classroom
      @api_v1_classroom = Api::V1::Classroom.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def api_v1_classroom_params
      params.expect(api_v1_classroom: [ :name, :cod, :starts_at, :ends_at, :room ])
    end
end
