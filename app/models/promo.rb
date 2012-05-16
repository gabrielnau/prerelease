class Promo
  include Mongoid::Document

  field :artist
  field :content
  field :name
  field :release_date
  field :release_number
  field :release_title


  validates_presence_of :artist, :content, :name, :release_date, :release_number, :release_title
end
