class CohortsController < ApplicationController
  def index
    cohorts = Cohort.includes(:users => {:submissions => :comments})
    render json: cohorts, include: "users.submissions.comments"
  end
end
