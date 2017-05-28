require 'gosu'
require_relative 'game'

class Amazing < Gosu::Window

  def initialize
    super(640, 640)
    self.caption = "Amazing"
    @game = Game.new(self)
  end

  def update
    @game.update
  end

  def draw
    @game.draw
  end

  def button_down(id)
    @game.button_down(id)
  end
end

window = Amazing.new
window.show
