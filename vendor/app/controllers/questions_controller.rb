class QuestionsController < ApplicationController
	before_action :set_question, only: [:show, :edit, :update, :destroy]

	def index
		@questions = Question.all
	end

	def show
		@questions = Question.all
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			redirect_to root_url
			flash[:success] = "Question create"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @question.update_attributes(question_params)
			redirect_to questionnaire_question_url
			flash[:success] = "question update"
		else
			render :edit
		end
	end

	def destroy
		@question.destroy
		redirect_to questionnaire_question_url
		flash[:success] = "question delete"
	end


	private 

	def set_question
		@question = Question.find(params[:id])
	end

	def question_params
		params.require(:question).permit(:title)
	end
end
