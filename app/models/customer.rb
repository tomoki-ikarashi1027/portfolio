class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum sex: {man: 0, woman:1}
         has_many :babies, dependent: :destroy
         has_many :comments, dependent: :destroy
         has_many :likes, dependent: :destroy
         has_many :problems, dependent: :destroy
         has_many :excretions, dependent: :destroy
         validates :name, presence: true, length: { in: 2..20 }
         attachment :image
end
