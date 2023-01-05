require_relative "../app.rb"

describe Application do

  context "Wrong input is given" do

    it "asks again" do
      io = double :io
      app = Application.new("music_library_test", io,
      AlbumRepository.new, ArtistRepository.new)
      expect(io).to receive(:puts).with "Welcome to the music library manager!"
      expect(io).to receive(:puts).with "\nWhat would you like to do?"
      expect(io).to receive(:puts).with "1 - List all albums\n2 - List all artists"
      expect(io).to receive(:gets).and_return("3")
      expect(io).to receive(:puts).with("Sorry, invalid input!")
      app.run
    end
  end


  context "1 is input" do
    it "Lists albums in database" do
      io = double :io
      app = Application.new("music_library_test", io,
      AlbumRepository.new, ArtistRepository.new)
      expect(io).to receive(:puts).with "Welcome to the music library manager!"
      expect(io).to receive(:puts).with "\nWhat would you like to do?"
      expect(io).to receive(:puts).with "1 - List all albums\n2 - List all artists"
      expect(io).to receive(:gets).and_return("1")
      expect(io).to receive(:puts).with "Here is the list of albums:"
      expect(io).to receive(:puts).with "* 1 - AM" 
      expect(io).to receive(:puts).with "* 2 - Humbug"
      app.run
    end
  end

#   context "2 is input" do
#     xit "lists artists in database" do
#       io = double :io
#       app = Application.new("music_library_test", io,
#       AlbumRepository.new, ArtistRepository.new)
#       expect(io).to receive(:puts).with "Welcome to the music library manager!"
#       expect(io).to receive(:puts).with "\nWhat would you like to do?"
#       expect(io).to receive(:puts).with "1 - List all albums\n2 - List all artists"
#       expect(io).to receive(:gets).and_return("2")
#       # expect(io).to receive(:puts).with 
#     end
#   end
# end


# $ ruby app.rb

# Welcome to the music library manager!

# What would you like to do?
#  1 - List all albums
#  2 - List all artists

# Enter your choice: 1
# [ENTER]

# Here is the list of albums:
#  * 1 - Doolittle
#  * 2 - Surfer Rosa
#  * 3 - Waterloo
#  * 4 - Super Trouper
#  * 5 - Bossanova
#  * 6 - Lover
#  * 7 - Folklore
#  * 8 - I Put a Spell on You
#  * 9 - Baltimore
#  * 10 -	Here Comes the Sun
#  * 11 - Fodder on My Wings
#  * 12 -	Ring Ring