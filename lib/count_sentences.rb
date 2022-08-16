require 'pry'

class String

  def sentence?
    self.end_with? "."    
  end

  def question?
    self.end_with? "?"    
  end

  def exclamation?
    self.end_with? "!"    

  end

  def count_sentences
    # puts self
    split_sent_array = self.split(/[.!?]/)
    # pp split_sent_array
    split_sent_array.delete_if {|elem| elem == ""}
    # pp split_sent_array
    no = split_sent_array.count
    # binding.pry
  end
end

# "This is a string! It has three sentences. Right?".count_sentences
"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences