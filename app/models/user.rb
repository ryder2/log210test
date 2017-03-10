class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  belongs_to :role
  has_many :notes
  has_many :demandes
  validates :name, presence: true, length: { maximum: 50, minimum: 5, message: 'Le nom doit être entre 5 et 50 caractères' }
end
