# your code goes here
def begins_with_r(array)
  array.all? {|e| e.start_with?("r")}
end

def contain_a(array)
  array.select {|e| e.include? "a"}
end

def first_wa(array)
  array.find do |element|
    e = nil
    if !element.is_a?(String)
      e = element.to_s
    else
      e = element
    end

    e.start_with?("wa")
  end
end
