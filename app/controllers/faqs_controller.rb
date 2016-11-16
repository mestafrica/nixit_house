class FaqsController < ApplicationController

	def index
		@faqs = Faq.all
	end

	def show
		@faq = Faq.find(params[:id])
	end

	def new
		@faq = Faq.new
	end

	def edit
	  	@faq = Faq.find(params[:id])
	end

	def create
		@faq = Faq.new(faq_params)
		
		if @faq.save
			redirect_to @faq
		else
			render 'new'
		end
	end

	def update
	  @faq = Faq.find(params[:id])
	 
	  if @faq.update(faq_params)
	    redirect_to @faq
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @faq = Faq.find(params[:id])
	  @faq.destroy
	 
	  redirect_to faq_path
	end

	private
		def faq_params
			params.require(:faq).permit(:question, :answer)
		end

end
