# encoding: utf-8
#!/usr/bin/ruby -w

$LOAD_PATH << '.'


require 'config.rb'

class LearningRuby
    def initialize(modulex,learned,results=nil)
        @modulex,@learned,@results = modulex,learned,results
    end
    def whereIm
        "I'm learned #{@learned} of #{@modulex}"
    end
    def addKnowledge(learnedModule)
        @learned.push(learnedModule)
    end

end


puts "loading config FILE: #{PICES}"
modulex = ['ruby','rails','gems']
learned = ['ruby']
rests = modulex - learned
puts "Hell-o I can write ' á b Ñ&%%3ááś´ ' becasuse I can accept utf8 encodes \n"
puts "you are not ready yet to start, you need #{rests}" unless learned.find_index('rails')
learning = LearningRuby.new(modulex,learned)
puts learning.whereIm
puts '\n\n\n'
learning.addKnowledge('class_definition')
puts learning.whereIm
# NOW- IN BLOCKS 

END{
    puts "now you are ready to start" if learned.find_index('rails')
}

BEGIN{
    puts "this is first line of a block"   
}


