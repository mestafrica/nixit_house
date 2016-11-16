class CommentsController < ApplicationController

	def create
		@faq = Faq.find(params[:faq_id])
		@comment = @faq.comments.create(comment_params)
		redirect_to faq_path(@faq)
	end

	def destroy
		@faq = Faq.find(params[:faq_id])
	  	@comment = faq.comments.find(params[:id])
	  	@comment.destroy
	 	redirect_to faq_path(@faq)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
