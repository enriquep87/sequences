class GuessesController < ApplicationController
def index
  @first_number=params["first_num"]
  @second_number=params["second_num"]
  @third_number=params["third_num"]

  g=Guess.new
  g.first_num=params["first_num"]
  g.second_num=params["second_num"]
  g.third_num=params["third_num"]
  g.save


  @list=Guess.all


  if @first_number.to_i < @second_number.to_i && @second_number.to_i <@third_number.to_i
    @answer="Yes!"
  elsif
    @answer="No"
  end


  render ("guesses/index.html.erb")
end
def answer
  #params = {"q"=>"Increasing numbers"}

  @user_answer=params["q"]

  render ("guesses/answer.html.erb")
end

end
