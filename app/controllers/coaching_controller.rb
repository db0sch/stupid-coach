class CoachingController < ApplicationController
  def answer
    @query = params[:query]

    if @query != @query.upcase
      @answer = coach_answer(@query)
    else
      @answer = coach_answer_enhanced(@query)
    end
  end

  def ask
  end


  def coach_answer(your_message)
  # TODO: return coach answer to your_message
    exit_phrase = "I am going to work right now!"
    if your_message != exit_phrase
      if your_message[-1] == "?" # fini avec un "?"
        return "Silly question, get dressed and go to work!"
      else
        return "I don't care, get dressed and go to work!"
      end
    else
      return ""
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    exit_phrase2 = "I AM GOING TO WORK RIGHT NOW!"
    if your_message != exit_phrase2
      if your_message[-1] == "?" # fini avec un "?"
        return "I can feel your motivation! Silly question, get dressed and go to work!"
      else
        return "I can feel your motivation! I don't care, get dressed and go to work!"
      end
    else
      return ""
    end
  end

end
