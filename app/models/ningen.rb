class Ningen < ActiveRecord::Base
	has_many :tasks
	validates :name, presence: {message: "せめて名前ぐらい入れろや"}
end
