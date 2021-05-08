class PagesController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  
  def dashboard
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else 
      @projects = Project.find_valid
    end 
  end

  def index
    @project = Project.new
  end
  

  def create
      @project = Project.create(name: params[:name],
      description: params[:description],
      started_at: params[:started_at],
      finished_at: params[:finished_at],
      state: params[:state])   
  end
end
