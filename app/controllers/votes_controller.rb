class VotesController < ApplicationController
  before_action :require_login

  def index; end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save!
      redirect_to votes_path
    else
      render :new
    end
  end

  private

    def vote_params
      params.require(:vote).permit(:question, :admin_id)
    end
end
