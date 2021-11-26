class Api::V1::BookingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  before_action :set_booking, only: [:show, :update]


   def index
    if params[:student_id].present?
     @bookings = Booking.where(student_id: params[:student_id])
    #  @bookings.each do |booking|
    #   booking.teacher
    elsif params[:teacher_id].present?
      @bookings = Booking.where(teacher_id: params[:teacher_id])
    else
      # @bookings = Booking.all
      @bookings = Booking.where.not(status: 'rejected')
    end
   end

   def show
     @teacher = @booking.teacher
    #  @student = @booking.student
   end


    def create
      @booking = Booking.new(booking_params)
      @booking.student = Student.find(params[:student_id])
      @booking.teacher = Teacher.find(params[:teacher_id])
      if @booking.save
        render :show, status: :created
      else
        render_error
      end
    end

    def update
      if @booking.update(booking_params)
        render :show
      else
        render_error
      end
    end






  private

  def booking_params
    params.require(:booking).permit(:time, :comment, :status, :student_id, :teacher_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def render_error
    render json: {errors: @booking.errors.full_messages},
      status: :unprocessable_entity
  end




end
