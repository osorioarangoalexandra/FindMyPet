class PetsController < ApplicationController

    def index
        @pets = current_user.pets
    end


    def show
        @pet = Pet.find(params[:id])
    end

    def new
        @pet = Pet.new
    end

    def create

        @pet = current_user.pets.new(pet_params)

        if @pet.save
            redirect_to pets_path, notice: 'Your Pet was succesfully created.'
        else
            render :new
        end
    end

    def edit
        @pet = Pet.find(params[:id])
    end

    def update
        pet = Pet.find(params["id"])
        pet.update(pet_params)
        redirect_to pets_path
    end

    def destroy
        

        Pet.find(params["id"]).destroy
        redirect_to pets_path
        
    end
    # def create
    #     # burger es variable de la clase hamburguesa
    #     burger = Burger.create(burger_params)
    #     redirect_to burger
    # end

    private

    def pet_params
        params.require(:pet).permit(:user_id, :name, :category, :breed, :color, :characteristic, :image, :date_lost, :latitude, :longitude, :status)
    end

end

    
