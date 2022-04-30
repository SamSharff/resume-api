class ExperiencesController < ApplicationController
  before_action :authenticate_user


  def index
    experiences = current_user.experiences
    render json: experiences.as_json
  end

  def create
    experience = Experience.new(
    user_id: current_user.id,
    category: params["category"],
    org_or_institution: params["org_or_institution"],
    description: params["description"],
    title: params["title"],
    dates: params["dates"],
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

  def update
    experience_id = params["id"]
    experience = Experience.find_by(id: experience_id)

    experience.user_id = params["user_id"] || experience.user_id
    experience.category = params["category"] || experience.category
    experience.org_or_institution = params["org_or_institution"] || experience.org_or_institution
    experience.description = params["description"] || experience.description
    experience.title = params["title"] || experience.title
    experience.dates = params["dates"] || experience.dates
    experience.location = params["location"] || experience.location
    experience.misc = params["misc"] || experience.misc

    experience.save
    render json: experience.as_json
  end 
end
