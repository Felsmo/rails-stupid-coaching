class CoachingController < ApplicationController
  def ask
  end

  def answer
    @question = params.fetch(:question)
    @answer = coach_answer_enhanced(@question)
  end

  def coach_answer(your_message)
    if your_message.upcase == "I am going to work right now!".upcase
      ''
    elsif your_message.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)

    if answer == ''
      ''
    elsif your_message == your_message.upcase
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  end

end
