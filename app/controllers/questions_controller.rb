class QuestionsController < ApplicationController

  def question
    phrase = "Mardi, des éléments ont commencé à filtrer sur l’identité du principal auteur de l’attentat, abattu lundi soir par les forces de l’ordre. Né à Mödling, au sud de Vienne, l’assaillant, âgé de 20 ans, avait été condamné en avril 2019 à vingt-deux mois de prison pour avoir voulu rejoindre la Syrie. Il avait été libéré de manière anticipée, ayant réussi à « tromper » le programme de déradicalisation autrichien. La procédure a bien été respectée et des contacts réguliers pris avec les agents, a fait savoir la ministre de la justice, Alma Zadic. Le jeune homme détenait également la nationalité de Macédoine du Nord, tout comme deux autres personnes dans le collimateur des enquêteurs. Environ 150 ressortissants de ce pays ont rejoint, entre 2012 et 2016, les rangs des islamistes pour combattre en Irak et en Syrie. Ils ont, pour la plupart, été recrutés au sein de la minorité albanaise musulmane de ce pays en majorité slave orthodoxe."
    @questions = phrase.split(' ')
    if params[:question]
      @questions = @questions.select do |question|
        question.start_with?(params[:question])
      end
    end
    if params[:title]
      @title = params[:title]
    end


  end

  def home

  end


end
