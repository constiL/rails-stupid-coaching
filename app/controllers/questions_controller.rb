class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question].end_with?('?') ?  'Silly question, get dressed and go to work!' : "I don't care, get dressed and go to work!" # rubocop:disable Layout/LineLength
    @answer = 'Great!' if params[:question] == 'I am going to work'
  end
end


# if params[:question] == "I am going to work"
#   @answer = 'Great!'
# elsif params[:question].end_with?('?')
#   @answer = 'Silly question, get dressed and go to work!'
# else
#   @answer = "I don't care, get dressed and go to work!"
# end
