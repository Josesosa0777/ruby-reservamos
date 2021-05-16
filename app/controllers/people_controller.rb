class PeopleController < ApplicationController
    before_action :find_person, except: [:new, :create, :index, :from_author]
    before_action :authenticate_user!, only: [:new, :index, :create, :edit, :update, :destroy]

    def new
        if current_user.email=='edith@reservamos.mx'
            @person = Person.new
            @newline = "que tal"
        end
    end
    def create
        @person = current_user.people.create(person_params)
        # render json: @people
        redirect_to @person
    end
    def show
        @person = Person.find(params[:id])
    end
    def edit
        @person = Person.find(params[:id])
        puts "\n\n\n #{@person.persisted?} \n\n\n"
    end
    def update
        @person.update(person_params)
        redirect_to @person
    end    
    def destroy
        @person = Person.find(params[:id])
        @person.destroy
        redirect_to root_path
    end
    def find_person
        @person = Person.find(params[:id])
    end
    def index
        @people = Person.all
    end
    def from_author
        @user = User.find(params[:user_id])
    end    
    def person_params
        params.require(:person).permit(:name, :category, :email, :area, :leader)
    end    
end
