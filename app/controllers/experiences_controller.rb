class ExperiencesController < ApplicationController
  before_action :authenticate_user

  def index
    experiences = current_user.experiences
    render json: experiences.as_json
  end

  def create
    experience = Experience.new(
      user_id: current_user.id,
      # which means user_id is whoever is logged in--you can't enter it in your params (requests.http example)
      category: params[:category],
      org_or_institution: params[:org_or_institution],
      description: params[:description],
      title: params[:title],
      dates: params[:dates],
      location: params[:location],
      misc: params[:misc],
    )

    if experience.save
      render json: experience
    else
      render json: { errors: experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    experience_id = current_user.experiences.find_by(id: params[:id])
    experience = Experience.find_by(id: experience_id)

    render json: experience.as_json
  end

  def update
    experience_id = current_user.experiences.find_by(id: params[:id])
    experience = Experience.find_by(id: experience_id)

    experience.category = params[:category] || experience.category
    experience.org_or_institution = params[:org_or_institution] || experience.org_or_institution
    experience.description = params[:description] || experience.description
    experience.title = params[:title] || experience.title
    experience.dates = params[:dates] || experience.dates
    experience.location = params[:location] || experience.location
    experience.misc = params[:misc] || experience.misc

    if experience.save
      render json: experience
    else
      render json: { errors: experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    experience_id = current_user.experiences.find_by(id: params[:id])
    experience = Experience.find_by(id: experience_id)

    experience.destroy
    render json: { message: "Experience deleted!" }.as_json
  end
end
