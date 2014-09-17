class WordsController < ApplicationController
  before_action :render_layout_if_html

  def index
    @words = Word.all
    render json: @words
  end

  def create
    # respond_with Word.create(word_params)
    words_params = params.require(:word).permit(:name, :description)
    @word = Word.create(words_params)
    render json: @word

  end


  private
    def render_layout_if_html #if someone tries to render html, if it is render the application
      if request.format.symbol == :html
        render "layouts/application"
      end
    end

  def word_params
    # params.require(:word).permit(:name, :description)
  end

end
