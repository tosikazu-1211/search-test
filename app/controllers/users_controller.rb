class UsersController < ApplicationController

	def index
		@search_params = user_search_params
		@users = User.search(@search_params).includes(:prefecture)
	end

	private

	def user_search_params
		params.fetch(:search, {}).permit(:name, :gender, :birthday_from, :birthday_to, :prefecture_id)
	end
end
