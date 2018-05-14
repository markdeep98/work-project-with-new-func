class QuestionsController < ApplicationController

	before_action :questionnaire_param

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
		@question = @questionnaire.questions.create(question_params)
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
			redirect_to root_url
			flash[:success] = "Question update"
		else
			render :edit
		end
	end

	def destroy
		@question.destroy
		redirect_to root_url
		flash[:success] = "Question delete"
	end


	private 

	def questionnaire_param
		@questionnaire = Questionnaire.find(params[:questionnaire_id])
	end

	def set_user
		@user = User.find(params[:user_id])
	end

	def question_params
		params.require(:question).permit(:title)
	end

end
