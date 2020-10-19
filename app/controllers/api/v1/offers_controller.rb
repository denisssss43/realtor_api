lass Api::V1::OffersController < ApplicationController

	def index
		offers = Offer.order('created_at DESC')
		render json: offers, status: :ok
	end

  def show
		offer = Offer.find(params[:id])
		render json: diary, stasus: :show
	end