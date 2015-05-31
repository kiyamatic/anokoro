class Ningen < ActiveRecord::Base
	has_many :tasks
	validates :name, presence: {message: "せめて名前ぐらい入れろや"},
			         length: {minimum: 2, message: "2文字以上の名前を入れてくれやい"}
	validates :description, presence: {message: "せめて説明ぐらい入れろや"},
			         length: {minimum: 6, message: "6文字以上の名前を入れてくれやい"}
	validates :img_url, presence: {message: "画像のURLをいれてね"}
end
