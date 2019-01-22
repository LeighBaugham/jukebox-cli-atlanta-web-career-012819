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
  puts "---- Jukebox Help ----"
  puts "- help : display this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  song = gets.chomp

  if songs.include?(song)
    puts "Playing #{song}"
  else
    song_num = song.to_i
    if song_num < 1 || song_num > songs.length
      puts "Invalid input, please try again"
    else
      puts "Playing #{songs[song_num - 1]}"
    end
  end
end

def list(songs)
 songs.each do |name|
   puts "#{name}"
 end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  command = ""
  while command
  puts "Please enter a command:"
  command = gets.downcase.chomp
  case command
    when 'list'
      list(songs)
      when 'play'
        list(songs)
        play(songs)
      when 'help'
        help
      when 'exit'
        exit_jukebox
        break
      else
        help
      end
    end
  end
  
