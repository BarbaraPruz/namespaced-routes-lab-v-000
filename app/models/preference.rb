class Preference < ActiveRecord::Base
  validates :artist_sort_order, inclusion: { in: [ "ASC", "DESC" ] }
  validates :song_sort_order, inclusion: { in: [ "ASC", "DESC" ] }

  def allow_create_songs
    Preference.find(1).allow_create_songs
  end
  def allow_create_songs=(value)
    Preference.find(1).update(:allow_create_songs => value)
  end
end
