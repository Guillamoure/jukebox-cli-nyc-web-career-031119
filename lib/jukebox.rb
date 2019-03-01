require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  songs.each do |x|
    puts "#{i+1}. #{songs[i]}"
    i+=0
  end
end

def play(songs)
  numbered_choices = []
  numbered_choices << (1..9)
  
  puts "Please enter a song name or number:"
  requested = gets.chomp
  if songs.include?(requested)
    puts "Playing #{requested}"
  elsif (1..9).include?(requested)
    index = requested - 1
    print index
    puts "Playing #{songs[index]}"
  else
    puts "Invalid input, please try again"
  end
end