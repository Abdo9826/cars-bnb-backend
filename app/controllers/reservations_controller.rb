class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
    render json: { code: 200,
      reservations: @reservations
    }, status: :ok   
  end

  def create
    @reservation = current_user.reservations.create(reservation_params)
    if @reservation.save
      render json: { code: 200,
        reservation: @reservation
      }, status: :ok
    else
      render json: { code: 400,
        message: "Reservation not created"
      }, status: :bad_request
    end
  end

  def destroy
    @reservation = current_user.reservations.find(params[:id])
    @reservation.destroy
    render json: { code: 200,
      message: "Reservation deleted"
    }, status: :ok
  end
end
