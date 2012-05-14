class Admin::Promo < ActiveRecord::Base
  attr_accessible :artist, :content, :name, :release_date, :release_number, :release_title
end
