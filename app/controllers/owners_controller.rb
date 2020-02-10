class OwnersController < ApplicationController

def index
    @owners = Owner.all
end


def show
    @owner = Owner.find(params[:id])
end

def new
    @owner = Owner.new
end

def create
    @owner = owner.new(owner_params)

    if @owner.save
        redirect_to owners_path, notice: 'Your Profile was succesfully created.'
    else
        render :new
    end
end

def edit
    @owner = Owner.find(params[:id])
end

def update
    owner = Owner.find(params["id"])
    owner.update(owner_params)
    redirect_to owners_path
end

def destroy
    

    Owner.find(params["id"]).destroy
    redirect_to owners_path
    
end
# def create
#     # burger es variable de la clase hamburguesa
#     burger = Burger.create(burger_params)
#     redirect_to burger
# end

private

def owner_params
    params.require(:owner).permit(:name, :lastname, :phone, :email, :image)
end

end