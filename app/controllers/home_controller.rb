class HomeController < ApplicationController
	skip_before_action :ensure_login, only: :home
	def home
	end
end