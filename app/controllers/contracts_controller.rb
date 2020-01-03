class ContractsController < ApplicationController
  before_action :set_contracts, only: [:show]

  def index
    @contracts = Contract.all
    render json: @contracts
  end

  def show
    @contract = Contract.find(params[:id])
    render json: @contract
  end

  def create
    @contract = Contract.new(contract_params)
    if @contract.valid?
      @contract.save
      render json: @contract
    end
  end

  private

  def set_contracts
    @contract = Contract.find(params[:id])
  end

  def contract_params
    params.permit(:team_id, :player_id)
  end
end
