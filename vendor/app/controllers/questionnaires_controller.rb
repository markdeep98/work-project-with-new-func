class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: %i[show edit update destroy]
  before_action :correct_user, only: %i[destroy edit]
  before_action :all_questionnaires, only: %i[index show]

  def index
  end

  def show
    @question = Question.all
    @user = User.find(@questionnaire.user_id)
  end

  def new
    @questionnaire = quest.new
  end

  def create
    @questionnaire = current_user.questionnaire.new(questionnaire_params)
    if @questionnaire.save
      redirect_to questionnaires_url
      flash[:success] = 'Questionnaire create'
    else
      render :new
    end
  end

  def edit
    if @questionnaire.user_id != current_user.id
      redirect_to root_url
      flash[:danger] = 'Error'
    end
  end

  def update
    if @questionnaire.update_attributes(questionnaire_params)
      redirect_to questionnaires_url
      flash[:success] = 'Questionnaire update'
    else
      render :edit
    end
  end

  def destroy
    @questionnaire.destroy
    redirect_to questionnaires_path
    flash[:success] = 'Questionnaire delete'
  end

  private

  def all_questionnaires
    @questionnaires = quest.all
  end

  def quest
    Questionnaire
  end

  def set_questionnaire
    @questionnaire = quest.find(params[:id])
  end

  def questionnaire_params
    params.require(:questionnaire).permit(:title, :status)
  end

  def correct_user
    @questionnaire = current_user.questionnaire.find_by(id: params[:id])
    redirect_to root_url if @questionnaire.nil?
  end
end
