class GistsController < ApplicationController
  def create
    @test_passage = TestPassage.find(params[:test_passage_id])
    @result = GistQuestionService.new(@test_passage.current_question).call

    if @result.success?
      create_gist
      flash[:success] = t('.success', url: @result[:html_url])
    else
      flash[:danger] = t('.fail')
    end

    redirect_to @test_passage
  end

  private

  def create_gist
    @test_passage.user.gists.create(question_id: @test_passage.current_question.id, url: @result[:html_url])
  end
end
