class CategoriesController < ActionController::Base
  layout 'application'
  def index
    @categories = Category.all
  end

  def show
    @id = params[:id]
    @postings = Posting.where(category_id: @id)
    @post = Posting.new
  end


end
