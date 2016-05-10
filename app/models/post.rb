class Post < ActiveRecord::Base
    has_many :replies
    validates :title, presence: { messages: "제목이 비었습니다!"}
end