require "./lib/jungle_beat"
require 'pry'
jb = JungleBeat.new
# => <JungleBeat list=<LinkedList head=nil #234567890890> #456789045678>
p jb.append("deep doo ditt woo hoo shu")
# => "deep doo ditt woo hoo shu"
p jb.count
# => 6
p jb.list.count
# => 6
p jb.play
# => # plays the sounds deep doo ditt woo hoo shu
