class TrainingsController < ApplicationController
  def index
    trainings = Training.all
    render json: trainings.as_json
  end

  def create
    training = Training.new(
    user_id: params["user_id"],
    category: params["category"],
    org_or_institution: params["org_or_institution"],
    description: params["description"],
    dates: params["dates"],
    degree_or_cert: params["degree_or_cert"],
    location: params["location"],
    misc: params["misc"]
  )

  training.save
  render json: training.as_json
  end
end
