puts "---- Bienvenidos a Tic Tac Toe Codeable ----"
puts "Reglas del juego:"
puts "--------------------------------------------"
puts "1. Los jugadores eligiran la posicion donde
  marcaran"
puts "--- Tablero ---"

puts "\n 1 | 2 | 3 "
puts "-----------"
puts " 4 | 5 | 6 "
puts "-----------"
puts " 7 | 8 | 9 "

puts "\nEmpecemos!!!"

puts "\n   |   |   "
puts "-----------"
puts "   |   |   "
puts "-----------"
puts "   |   |   "

COMBINATIONS_WIN = [
  [1,2,3],  
  [4,5,6],
  [7,8,9],
  [1,4,7],
  [2,5,8],
  [3,6,9],
  [1,5,9],
  [3,5,7]
]

def playerChange(value)
   (value == "O") ? "X" : "O"
end

def turnHuman()
    value = 0
    loop do
      puts "\nEs el turno del Humano"
      value = gets.chomp.to_i
      break if ( (value >= 1 ) && (value <= 9 ) )
    end
    return value
end

def markedValue(arr1,arr2)
  (arr1 + arr2).uniq
end

def turnBot(arr)
  bot_mark = []
  loop do
    # rand(1..9)
    # TODO: Asigna la posicion de marcado del BOT
    break if (  )
  end
  return
end

def tictactoe()
  
  value_human = []
  value_bot = []

  band = false

  player = "X"
  bot = "O"
  

  marked = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  while (band == false) do
    
    pos_human = turnHuman()
    marked[pos_human-1] = player
    value_human.push(pos_human)
    
    matriz_marked = markedValue(value_human,value_bot)
    

    pos_bot = turnBot(matriz_marked)
    marked[pos_bot-1] = bot
    value_bot.push(pos_bot)

    # player == "X" ? value_human.push(pos) : value_bot.push(pos)

    puts "\n #{marked[0]} | #{marked[1]} | #{marked[2]} "
    puts "-----------"
    puts " #{marked[3]} | #{marked[4]} | #{marked[5]} "
    puts "-----------"
    puts " #{marked[6]} | #{marked[7]} | #{marked[8]} "

    puts "Soy un humna #{value_human}"
    puts "Soy un bot #{value_bot}"
    
    for i in 0..COMBINATIONS_WIN.length-1
      if ( (COMBINATIONS_WIN[i] - value_human) == [] )
        puts "El indescutible ganador!! es el HUMANO #{player}"
        return band = true 
      elsif ( (COMBINATIONS_WIN[i] - value_bot) == [] )
        puts "El indescutible ganador!! es el BOT #{player}"
        return band = true 
      end
    end

    # player = playerChange(player)


  end

end

puts tictactoe()