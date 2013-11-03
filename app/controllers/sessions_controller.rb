class SessionsController < ApplicationController
	def new
		@login = Login.new
	end

	def create
		login = Login.new(params[:login])
		session[:reader_id] = login.authenticate
		redirect_to root_url, notice: "You are logged in"
	end

	def destroy
		session[:reader_id] = nil
		redirect_to root_url
	end

	private

	def session_params
	end

end
