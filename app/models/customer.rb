class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        enum sex: {man: 0, woman:1}
        has_many :babies, dependent: :destroy
        has_many :comments, dependent: :destroy
        has_many :baby_image_comments, dependent: :destroy
        has_many :likes, dependent: :destroy
        has_many :problems, dependent: :destroy
        has_many :baby_images, dependent: :destroy
        has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
        has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
        has_many :following_customer, through: :follower, source: :followed
        has_many :follower_customer, through: :followed, source: :follower
        validates :name, presence: true, length: { in: 2..20 }
        attachment :image

        def follow(customer_id)
          follower.create(followed_id: customer_id)
        end
          # Customerのフォローを外す
        def unfollow(customer_id)
          follower.find_by(followed_id: customer_id).destroy
        end
          # フォローしていればtrueを返す
        def following?(customer)
          following_customer.include?(customer)
        end
end
