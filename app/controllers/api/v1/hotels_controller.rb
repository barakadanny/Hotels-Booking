module Api
  module V1
    class HotelsController < ApplicationController
      before_action :search_hotel, only: [:show, :update, :destroy]
      protect_from_forgery with: :null_session

      def index
        @hotels = Hotel.all
        render json: @hotels, status: :ok
      end

      def new
        Hotel.new
      end

      def create
        @hotel = Hotel.new(hotel_params)
        if @hotel.save
          render json: { message: 'Hotel Added Successfully', status: :created, response_code: 201}
        else
          render json: { message: "All fields are required", status: :not_acceptable, response_code: 406, }
        end
      end

      def show
        render json: @hotel
      end

      def update
        @hotel.update(hotel_params)
        render json: @hotel, status: :ok
      end

      def destroy
        @hotel.delete
        render json: @hotel, status: :ok
      end

      private

      def search_hotel
        @hotel = Hotel.find(params[:id])
        rescue ActiveRecord::RecordNotFound
          render json: { message: 'Hotel not found', status: :not_found, response_code: 404 }
      end

      def hotel_params
        params.require(:hotel).permit(:name, :address)
      end
    end
  end
end