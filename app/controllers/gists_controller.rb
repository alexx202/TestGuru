class GistsController < ApplicationController
  def create
    @test_passage = TestPassage.find(params[:test_passage_id])
    result = GistQuestionService.new(@test_passage.current_question).call

    if result.success?
      create_gist(result)
      flash[:success] = "#{t('.success')} #{view_context.link_to('gist', result.url)}"
    else
      flash[:danger] = t('.fail')
    end

    redirect_to @test_passage
  end

  private

  def create_gist(result)
    @test_passage.user.gists.create(question_id: @test_passage.current_question.id, url: result.url)
  end
end
