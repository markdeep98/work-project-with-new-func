class QuestionsController < ApplicationController
  before_action :questionnaire_param, only: [:create]
  before_action :set_question, only: %i[show update destroy edit]

  def index; end

  def show
    @questions = question_method.all
  end

  def new
    @question = question_method.new
  end

  def create
    @question = @questionnaire.questions.create(question_params)
    if @question.save
      redirect_to questionnaire_path(@questionnaire.id)
      flash[:success] = 'Question create'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @question.update_attributes(question_params)
      redirect_to root_url
      flash[:success] = 'Question update'
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to root_url
    flash[:success] = 'Question delete'
  end

  private

  def question_method
    Question
  end
  
  def set_question
    @question = question_method.find(params[:id])
  end

  def questionnaire_param
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
  end

  def question_params
    params.require(:question).permit(:title)
  end
end
