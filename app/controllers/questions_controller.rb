class QuestionsController < ApplicationController
  before_action :authenticate_user!
  def index
    @questions = Question.all
  end

  def show
    @question = Question.friendly.find(params[:id])
  end

  def new
    @question = current_user.questions.build
  end

  def create
    @question = current_user.questions.build(questions_params)
    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end
    
  def edit
    
  end
  
  private
    def questions_params
       params.require(:question).permit(:titre,:libelle,:dat_pub,:user_id)
    end
end
