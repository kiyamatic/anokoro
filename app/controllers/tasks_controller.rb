class TasksController < ApplicationController

	def create
		@ningen = Ningen.find(params[:ningen_id])
		@task = @ningen.tasks.create(task_params)
		redirect_to @ningen
	end


	private

	def task_params
		params[:task].permit(:age, :event)
	end
end
