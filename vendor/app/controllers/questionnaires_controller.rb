class QuestionnairesController < ApplicationController
		before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]
		before_action :correct_user, only: [:destroy, :edit]

	def index
		@questionnaires = Questionnaire.all
	end

	def show
		@questionnaires = Questionnaire.all
		@question = Question.all
		@user = User.find(@questionnaire.user_id)
	end
	def new
		@questionnaire = Questionnaire.new
	end

	def create
		@questionnaire = current_user.questionnaire.new(questionnaire_params)
		if @questionnaire.save
			redirect_to questionnaires_url
			flash[:success] = "Questionnaire create"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @questionnaire.update_attributes(questionnaire_params)
			redirect_to questionnaires_url
			flash[:success] = "Questionnaire update"
		else
			render :edit
		end
	end

	def destroy
		@questionnaire.destroy
		redirect_to questionnaires_path
		flash[:success] = "Questionnaire delete"
	end


	private 

	def set_questionnaire
		@questionnaire = Questionnaire.find(params[:id])
	end

	def questionnaire_params
		params.require(:questionnaire).permit(:title, :status)
	end

	def correct_user
		@questionnaire = current_user.questionnaire.find_by(id: params[:id])
			redirect_to root_url if @questionnaire.nil?
			flash[:danger] = "Error"		
	end

end
