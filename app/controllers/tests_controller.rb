class TestsController < ApplicationController
  before_action :find_test, only: %i[show edit update destroy start]
  before_action :find_user, only: %i[start]

  def index
    @tests = Test.all
  end

  def show
    @questions = @test.questions
  end

  def new
    @test = Test.new
  end

  def edit; end

  def create
    @test = Test.new(create_params)

    if @test.save
      redirect_to tests_path
    else
      render :new
    end
  end

  def update
    if @test.update(create_params)
      redirect_to tests_path
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to tests_path
  end

  def start
    @user.tests.push(@test)
    redirect_to @user.test_passage(@test)
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def find_user
    @user = User.first
  end

  def create_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end
end
