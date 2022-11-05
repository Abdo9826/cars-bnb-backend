class ReservationsController < ApplicationController
  def index
    if current_user
      @reservations = current_user.reservations.includes(:car)
      render json: { code: 200,
                     reservations: @reservations }, status: :ok
    else
      render json: { code: 401,
                     message: 'You need to sign in or sign up before continuing.' }, status: :unauthorized
    end
  end

  def create
    @reservation = current_user.reservations.new(reservation_params)
    if @reservation.save
      render json: { code: 200,
                     reservation: @reservation,
                     message: 'Reservation created' }, status: :ok
    else
      render json: { code: 400,
                     message: 'Reservation not created',
                     error: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = current_user.reservations.find(params[:id])
    if @reservation.destroy
      render json: { code: 200, reservation: @reservation,
                     message: 'Reservation deleted' }, status: :ok
    else
      render json: { code: 400, reservation: @reservation,
                     message: 'Reservation not deleted',
                     error: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:car_id, :user_id, :reservation_date, :city)
  end
end
