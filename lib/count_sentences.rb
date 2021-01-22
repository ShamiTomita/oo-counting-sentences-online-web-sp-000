require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_count = 0 
    array = self.split
    senetence_count = array.count("."||"...") + array.count("?"||"??") + array.count("!"||"!!")
    binding.pry
    return senetence_count
    
  end
end