class ChatsController < ApplicationController
	def all_chats
		@user = User.find(params[:id])
		unless @user.nil?
		    @users = User.where(age: (@user.age - 5)..(@user.age + 5))
	         .where(bool_drink: (@user.bool_drink - 5)..(@user.bool_drink + 5))
	         .where(party: (@user.party - 5)..(@user.party + 5))
	         .where(study: (@user.study - 5)..(@user.study + 5))
	         .where(commute: !@user.commute)
	         .where.not(id: @user.id)
		end
	end

	def chat
	end
end
