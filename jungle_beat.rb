require "./lib/jungle_beat"
require 'pry'
require "./lib/linked_list"
list = LinkedList.new
p list.append("plop")
# => "plop"
p list.to_string
# => "plop"
p list.append("suu")
# => "suu"
p list.prepend("dop")
# => "dop"
p list.to_string
# => "dop plop suu"
p list.count
# => 3
p list.insert(1, "woo")
# => "woo"
p list.to_string
# => "dop woo plop suu"
p list.to_string
# => "deep woo shi shu blop"
p list.find(2, 1)
# => "shi"
p list.find(1, 3)
# => "woo shi shu"
p list.includes?("deep")
# => true
p list.includes?("dep")
# => false
p list.pop
# => "blop"
p list.pop
# => "shu"
p list.to_string
# => "deep woo shi"
