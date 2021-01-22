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
    array.each do |x|
     if x.include?("."||"..."||"?"||"??"||"!"||"!!!")
       sentence_count += 1
     end 
    return sentence_count
  end