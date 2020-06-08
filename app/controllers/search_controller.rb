class SearchController < ApplicationController

  def search
    @model = params["search"]["model"]
    @content = params["search"]["content"]
    @method = params["search"]["method"]
    @records = search_for(@model, @content, @method)
  end

  private
  def search_for(model, content, method)
    if model == 'problem'
      if method == 'perfect'
        Problem.where(body: content)
      elsif method == 'forward'
        Problem.where('body LIKE ?', content+'%')
      elsif method == 'backward'
        Problem.where('body LIKE ?', '%'+content)
      else
        Problem.where('body LIKE ?', '%'+content+'%')
      end
    elsif model == 'comment'
      if method == 'perfect'
        Comment.where(body: content)
      elsif method == 'forward'
        Comment.where('body LIKE ?', content+'%')
      elsif method == 'backward'
        Comment.where('body LIKE ?', '%'+content)
      else
        Comment.where('body LIKE ?', '%'+content+'%')
      end
    end
  end
end
