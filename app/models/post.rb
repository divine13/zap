class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_attached_file :picture, :styles => { :thumb => "367x210>"}

  validates(:about, presence: true, length: { minimum: 10 })
  validates(:contact_details, presence: true, length: {minimum: 3 } )
  validates(:designer, presence: true )

    default_scope order: 'posts.created_at DESC'
end
