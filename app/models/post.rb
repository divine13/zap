class Post < ActiveRecord::Base
  belongs_to :user

  has_attached_file :picture

  validates(:about, presence: true, length: { minimum: 10 })
  validates(:contact_details, presence: true, length: {minimum: 3 } )
  validates(:designer, presence: true )

  has_many :comments
end
