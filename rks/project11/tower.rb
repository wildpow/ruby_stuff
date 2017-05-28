require 'gosu'
require_relative 'game'

class Tower < Gosu::Window

  def initialize
    super(800, 600, false)
    self.caption = "Tower of Hanoi"
    @game = Game.new(self)
  end

  def needs_cursor?
    true
  end

  def button_down(id)
    @game.button_down(id)
  end

  def draw
    @game.draw
  end
  
end

window = Tower.new
window.show
