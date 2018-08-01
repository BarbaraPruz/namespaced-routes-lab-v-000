require 'pry'
class Preference < ActiveRecord::Base
  validates :artist_sort_order, inclusion: { in: [ "ASC", "DESC" ] }
  validates :song_sort_order, inclusion: { in: [ "ASC", "DESC" ] }

  def allow_create_songs
    binding.pry
    Preference.find_or_create(1).allow_create_songs
  end
  def allow_create_songs=(value)
    row = Preference.find_or_create(1)
    row.update(:allow_create_songs => value)
  end

end
