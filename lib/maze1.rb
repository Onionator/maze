require 'pry'

class Maze
  @@rooms = {}
  def initialize(number_of_rooms)
    @number_of_rooms = number_of_rooms
  end
  def room(room_number)
    @@rooms[room_number]
  end
  def change_room(id)
    @@rooms[id].room_number
  end
end

class Room
  def initialize(north, west, south, east, id)
    @north = north
    @south = south
    @west = west
    @east = east
    @room_number = id
  end
  def which_room(direction)
    ("@" + direction)
  end
end

one = Room.new(1, 3, 8, 2, 1)
two = Room.new(8, 1, 5, 3, 2)
three = Room.new(6, 2, 6, 1, 3)
four = Room.new(1, 6, 7, 5, 4)
five = Room.new(1, 4, 8, 6, 5)
six = Room.new(3, 5, 1, 2, 6)
seven = Room.new(4, 9, 8, 1, 7)
eight = Room.new(5, 3, 2, 8, 8)
nine = Room.new(9, 9, 9, 9, 9)

maze = Maze.new(9)
@@rooms = { 1 => one, 2 => two, 3 => three, 4 => four, 5 => five, 6 => six, 7 => seven, 8 => eight, 9 => nine }
maze.room(1)
