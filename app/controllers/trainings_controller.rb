class TrainingsController < ApplicationController
  before_action :authenticate_user

  def index
    trainings = current_user.trainings
    render json: trainings.as_json
  end

  def create
    training = Training.new(
      user_id: current_user.id,
      category: params[:category],
      org_or_institution: params[:org_or_institution],
      description: params[:description],
      dates: params[:dates],
      degree_or_cert: params[:degree_or_cert],
      location: params[:location],
      misc: params[:misc],
    )
    if training.save
      render json: training
    else
      render json: { errors: training.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    training_id = current_user.trainings.find_by(id: params[:id])
    training = Training.find_by(id: training_id)

    render json: training.as_json
  end

  def update
    training_id = current_user.trainings.find_by(id: params[:id])
    training = Training.find_by(id: training_id)

    training.category = params[:category] || training.category
    training.org_or_institution = params[:org_or_institution] || training.org_or_institution
    training.description = params[:description] || training.description
    training.dates = params[:dates] || training.dates
    training.degree_or_cert = params[:degree_or_cert] || training.degree_or_cert
    training.location = params[:location] || training.location
    training.misc = params[:misc] || training.misc

    if training.save
      render json: training
    else
      render json: { errors: training.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
