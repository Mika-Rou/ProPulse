class TestsController < ApplicationController
  def index
    @tests = Test.without_login
    @main_tests = Test.where(nb_questions: 0)

    if params[:test_id]
      @current_test = Test.find(params[:test_id])
      @tests = Test.where(category: @current_test.category)
    end

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(:tests_by_category, partial: "shared/test_by_category",
          locals: { tests: @tests })
      end
      format.html
    end
  end

  def filter_by_category
  end
  def show
    @test = Test.find(params[:id])
  end
end
