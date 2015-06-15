class Task < ActiveRecord::Base
  belongs_to :ningen
  validates :age, presence: {message: "年齢をいれてください"}
  validates :event, presence: {message: "出来事をいれてください"},
  					length: {minimum: 6, message: "6文字以上でお願いしますね"}
end
