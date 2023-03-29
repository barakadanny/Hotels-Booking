module Api
  module V1
    class HotelsController < ApplicationRecord
      def index
        @hotels = Hotel.all
        render json: @hotels, status: :ok
      end
    end
  end
end