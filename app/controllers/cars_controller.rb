class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: { code: 200, cars: @cars, user: current_user }
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: { code: 200, car: @car, notice: 'Car was successfully created.', status: :created }
    else
      render json: { car: @car.errors, notice: 'Car could not be created', status: :unprocessable_entity }
    end
  end

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      render json: { code: 200, car: @car, notice: 'Car was successfully deleted.', status: :ok }
    else
      render json: { code: 500, car: @car, notice: "car was not successsfully deleted", status: :failed }
    end
  end

  private

  def car_params
    params.require(:car).permit(:model, :brand, :specifications, :year_released, :featured_image)
  end
end
