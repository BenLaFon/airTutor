class Api::V1::StudentsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  before_action :set_student, only: [:show, :update]

  def index
    @students = Student.all
  end

  def show

  end

  def create
    @student = Student.new(students_params)
    @student.user = User.find(params[:user_id])
    if @student.save
      render :show, status: :created
    else
      render_error
    end
  end

    def update
      if @student.update(students_params)
        render :show
      else
        render_error
      end
    end


   private

  def students_params
    params.permit(:age, :user_id)
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def render_error
    render json: {errors: @student.errors.full_messages},
      status: :unprocessable_entity
  end


end
