class Api::V1::TeachersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  before_action :set_teacher, only: [:show, :update]
  def index
  @teachers = Teacher.all
    # render json: @users #Just for testing
  end

  def show
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = User.find(params[:user_id])
    if @teacher.save
      render :show, status: :created
    else
      render_error
    end
  end

    def update
      if @teacher.update(teacher_params)
        render :show
      else
        render_error
      end
    end


  private


 def teacher_params
    params.permit(:credential, :user_id)
 end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def render_error
    render json: {errors: @teacher.errors.full_messages},
      status: :unprocessable_entity
  end

end
