class AnswersController < ApplicationController
	def create
		@answer = Answer.new(answer_params)
		@answer.save

		redirect_to question_path(id: @answer.question_id)
	end

	private

	def answer_params
		params
			.require(:answer)
			.permit(:question_id, :body)
			.merge({ user_id: current_user.id })
	end
end
