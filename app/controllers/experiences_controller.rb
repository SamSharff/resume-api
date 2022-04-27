class ExperiencesController < ApplicationController
  def index
    experiences = Experience.all
    render json: experiences.as_json
  end

  def create
  experience = Experience.new(
    user_id: params["user_id"],
    category: params["category"],
    org_or_institution: params["org_or_institution"],
    description: params["description"],
    title: params["title"],
    dates: params["date"],
    location: params["location"],
    misc: params["misc"]
  )

  experience.save
  render json: experience.as_json
  end

  def show
    experience_id = params["id"]
    experience = Experience.find_by(id: experience_id)

    render json: experience.as_json
  end
end
