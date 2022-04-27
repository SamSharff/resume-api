class ExperiencesController < ApplicationController
  def index
    experiences = Experience.all
    render json: experiences.as_json
  end
end
