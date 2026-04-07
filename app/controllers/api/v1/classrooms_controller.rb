class Api::V1::ClassroomsController < ApplicationController
  before_action :set_classroom, only: %i[ show update destroy ]

  # GET /api/v1/classrooms
  # GET /api/v1/classrooms.json
  def index
    @classrooms = Classroom.all

    render json: @classrooms
  end

  # GET /api/v1/classrooms/1
  # GET /api/v1/classrooms/1.json
  def show
    render json: @classroom
  end

  # POST /api/v1/classrooms
  # POST /api/v1/classrooms.json
  def create
    @classroom = Classroom.new(classroom_params)

    if @classroom.save
      render :show, status: :created, location: @classroom
    else
      render json: @classroom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/classrooms/1
  # PATCH/PUT /api/v1/classrooms/1.json
  def update
    if @classroom.update(classroom_params)
      render :show, status: :ok, location: @classroom
    else
      render json: @classroom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/classrooms/1
  # DELETE /api/v1/classrooms/1.json
  def destroy
    @classroom.destroy!
  end

  def now
    @classroom = Classroom.now
    render json: @classroom
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom
      @classroom = Classroom.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def classroom_params
      params.expect(classroom: [ :name, :cod, :starts_at, :ends_at, :room ])
    end
end
