require "./lib/linked_list"

class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    beats = data.split(' ')
    beats.each do |beat|
      @list.append(beat)
    end
    data
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Xander #{beats}`
  end
end
