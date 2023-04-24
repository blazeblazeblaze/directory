class Api::PeopleController < ApplicationController
  def index
    if params[:name] && params[:name] != ""
      @people = Person.where("name LIKE ?", "%#{params[:name]}%")
    else
      @people = Person.all
    end

    render :index, layout: false, locals: { people: @people } 
  end
end
