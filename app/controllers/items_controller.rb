class ItemsController < ApplicationController
	def create
		@checklist = Checklist.find(params[:checklist_id])
		@item = @checklist.items.create(params[:item])
		redirect_to checklist_path(@checklist)
	end
end
