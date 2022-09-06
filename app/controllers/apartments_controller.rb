class ApartmentsController < ApplicationController

    def index 
        Apartment.all 
        render json: apartments
    end 

    def create
        apartment = Apartment.create!(apartment_params)
        render json: apartment, status: :created 

    end

    def show 
        Apartment.find_apartment
        render json: apartment
    end
    
    def update
        apartment = find_apartment
        apartment.update(apartment_params)
        render json:apartment
    end 

    def destroy
        apartment = find_apartment
        apartment.destroy
        head :no_content
    end

    private 
    
    def find_apartment
        Apartment.find(params[:id])
    end 

    def apartment_params
        params.permit(:number)
    end



end
