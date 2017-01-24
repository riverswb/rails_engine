class Api::V1::Transactions::FindController < ApplicationController

  def show
    render json: Transaction.find_by(find_params)
  end

  def index
    render json: Transaction.where(find_params)
  end

  private

  def find_params
    params.permit(:id, :result, :credit_card_number, :credit_card_expiration_date, :created_at, :updated_at)
  end
end
