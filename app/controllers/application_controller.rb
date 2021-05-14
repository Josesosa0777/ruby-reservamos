class ApplicationController < ActionController::Base
    before_action :find_article, except: [:new, :create, :index]

    def new
        @person = Person.new
    end
    def create
        @people = Person.create(name: params[:person][:name], category: params[:person][:category], email: params[:person][:email], area: params[:person][:area], leader: params[:person][:leader])
    render json: @people
    end  
    def show
        @person = Person.find(params[:id])
    end   
    def edit
        @person = Person.find(params[:id])
        puts "\n\n\n #{@person.persisted?} \n\n\n"
    end
    def update
        @person = Person.find(params[:id])
        @person.update(name: params[:person][:name], category: params[:person][:category], email: params[:person][:email], area: params[:person][:area], leader: params[:person][:leader])
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
end
