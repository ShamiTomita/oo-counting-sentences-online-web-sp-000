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
    array = self.split("")
    array.delete_if("!!", "...")
    senetence_count = array.count(".") + array.count("?")
    return senetence_count
  end
end