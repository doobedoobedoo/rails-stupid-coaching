class CoachingController < ApplicationController
  def home
  end

  def answer
    @question = params[:query]
    @coach_answer = coach_answer(@question)
  end

  # def ask(your_message)
  #   if your_message == "I AM GOING TO WORK RIGHT NOW!"
  #     return ""
  #   elsif your_message == your_message.upcase
  #     return "I can feel your motivation! " + coach_answer(your_message)
  #   else
  #     return coach_answer(your_message)
  #   end
  # end

  def coach_answer(question)
    if question == "I am going to work right now!"
      return "I can feel your motivation"
    elsif question.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end


