class TestsController < ApplicationController
  before_action :find_test, only: %i[show edit update delete]
  def index
    @tests = Test.all
  end

  def show; end

  def new
    @test = Test.new
  end

  def edit; end

  def create
    @test = Test.new(create_params)

    if @test.save
      redirect_to @test
    else
      redirect_to :new
    end
  end

  def update
    if @test.update(create_params)
      redirect_to @test
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to tests_path
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def create_params
    params.require(:test).permit(:title, :level, :category_id)
  end
end
