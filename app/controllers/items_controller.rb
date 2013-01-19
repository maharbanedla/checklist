class ItemsController < ApplicationController
	def edit
		@checklist = Checklist.find(params[:checklist_id])
		@item = @checklist.items.edit(params[:item])
		redirect_to checklist_path(@checklist)
	end	
	def create
		@checklist = Checklist.find(params[:checklist_id])
		@item = @checklist.items.create(params[:item])
		redirect_to checklist_path(@checklist)
	end

	def destroy
		@checklist = Checklist.find(params[:checklist_id])
		@item = @checklist.items.find(params[:item])
		@item.destroy
		redirect_to checklist_path(@checklist)
	end
end
