class QuestionsController < ApplicationController
	
	def index
		@questions = Question.all
	end

	def create
		@question = Question.new(question_params)
		@question.save
		
		redirect_to @question
	end 

	def new
		@question = Question.new
	end

	def edit; end

	def show
		@question = Question.find(params[:id])
	end

	def update; end

	def destroy; end

	private

	def question_params
		params.require(:question)
			.permit(:title, :body)
			.merge({ user_id: current_user.id })
	end
end
