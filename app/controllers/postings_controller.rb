class PostingsController < ActionController::Base
  layout 'application'
  def show
    @post = Posting.find(params[:id])
  end

  def create 
    p params
    # "posting"=>{"title"=>"I like toast", "body"=>"Mmmm yes"}, "category_id"=>"1"
    @post = Posting.create title: params[:posting][:title], body: params[:posting][:body], category_id: params[:category_id]
    redirect_to :action => :edit, :id => @post.slug
  end

  def edit
    @id = params[:id]
    @post = Posting.find(@id)
  end

  def destroy
    @post = Posting.find(params[:id])
    @category_id = @post.category_id
    @post.destroy

    redirect_to :controller => :categories, :action => :show, :id => @category_id
  end

  def update
    Posting.find(params[:id]).update_attributes params[:posting]
    redirect_to :action => :show, :id => params[:id]
  end
end
