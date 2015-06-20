class TasksController < ApplicationController
	#before_action: set_task , only %w(create)

	def create
		@ningen = Ningen.find(params[:ningen_id])
		@task = @ningen.tasks.create(task_params)
		redirect_to @ningen
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to ningen_path(params[:ningen_id])
	end

	private

	#def set_task
		#@ningen = Ningen.find(params[:ningen_id])
	#end

	def task_params
		params[:task].permit(:age, :event)
	end
end
