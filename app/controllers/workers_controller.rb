class WorkersController < ApplicationController

 def index
 	@workers = Worker.all
 end

 def new
 	@worker = Worker.new
 end	
 
 def create
 	@worker = Worker.new(
 		first_name: params[:worker][:first_name],
 		last_name: params[:worker][:last_name],
 		email: params[:worker][:email]
 	)
 	if @worker.save 
 	  redirect_to workers_path
 	else
 	  render :new 
    end
 end
 
 def show
 	@worker = Worker.find(params[:id])
 end

 def edit
 	@worker = Worker.find(params[:id])
 end
 
 def update
 	@worker = Worker.find(params[:id])
 	if @worker.update(worker_params)
 	   redirect_to workers_path(@worker)
 	else
 	   render :edit
 end 
end	
 
 def destroy
 	@worker = Worker.find(params[:id])
 	@worker.destroy
    redirect_to workers_path
 end
 

private

 def worker_params
    params.require(:worker).permit(:first_name, :last_name, :email)
 end 
end