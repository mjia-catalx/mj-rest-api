class Api::V1::FactsController < ApplicationController
  def index
    @facts = Fact.where({user_id: params["user_id"]})
    render json: @facts
  end
end
