class Admin::TestsController < Admin::BaseController
  before_action :find_test, only: %i[show edit update destroy update_inline]
  before_action :find_tests, only: %i[index update_inline]

  def index; end

  def show
    @questions = @test.questions
  end

  def new
    @test = Test.new
  end

  def edit; end

  def create
    @test = current_user.created_tests.new(create_params)

    if @test.save
      redirect_to admin_tests_path
      flash[:success] = t('.success')
    else
      render :new
    end
  end

  def update
    if @test.update(create_params)
      redirect_to admin_tests_path
    else
      render :edit
    end
  end

  def update_inline
    if @test.update(create_params)
      redirect_to admin_tests_path
    else
      render :index
    end
  end

  def destroy
    @test.destroy
    redirect_to admin_tests_path
  end

  private

  def find_tests
    @tests = Test.all
  end

  def find_test
    @test = Test.find(params[:id])
  end

  def create_params
    params.require(:test).permit(:title, :level, :category_id)
  end
end
