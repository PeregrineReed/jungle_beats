require "./lib/jungle_beat"
require 'pry'
jb = JungleBeat.new
# => <JungleBeat list=<LinkedList head=nil #234567890890> #456789045678>
p jb.list
# => <LinkedList head=nil #234567890890>
p jb.list.head
# => nil
p jb.append("deep doo ditt")
# => "deep doo ditt"
p jb.list.head.data
# => "deep"
p jb.list.head.next_node.data
# => "doo"
p jb.append("woo hoo shu")
# => "woo hoo shu"
p jb.count
# 6
