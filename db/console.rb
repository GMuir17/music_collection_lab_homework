require('pry')
require_relative('../models/album.rb')
require_relative('../models/artist.rb')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Iron Maiden'
  })
artist1.save()

album1 = Album.new({
  'title' => 'Powerslave',
  'genre' => 'metal',
  'artist_id' => artist1.id()
  })
album1.save()

album2 = Album.new({
  'title' => 'Number of the Beast',
  'genre' => 'metal',
  'artist_id' => artist1.id()
  })
  album2.save()


binding.pry
nil
