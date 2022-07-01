class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index new create]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions.pluck(:body)
    render plain: @questions
  end

  def show
    render plain: @question.body
  end

  def new; end

  def create
    @question = @test.questions.new create_params
    if @question.save
      redirect_to test_questions_path
    else
      render :new
    end
  end

  def destroy
    @question.destroy
    redirect_to test_questions_path
  end

  private

  def create_params
    params.require(:question).permit(:body)
  end

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def rescue_with_question_not_found
    render plain: 'Question not found'
  end
end
