class UsersController < ApplicationController
  def index
    users = User.where(role_id: 1)
      .limit(params[:limit])
      .offset(params[:offset])
    render json: users
  end
end




# if params[:role_id]
  #   users = users.where("role_id = ?", params[:role_id])
  # end

  # if params[:cohort_id]
  #   users = users.where("cohort_id = ?", params[:cohort_id])
  # end

  # if params[:limit]
  #   users = users.limit(params[:limit])
  # end

  # if params[:offset]
  #   users = users.offset(params[:offset])
  # end

  # users = users.order(:last_name)