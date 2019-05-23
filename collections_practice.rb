# your code goes here
def begins_with_r(array)
  array.all? {|e| e.start_with?("r")}
end

def contain_a(array)
  array.select {|e| e.include? "a"}
end

def first_wa(array)
  array.find {|e| e.start_with?("w") }
end
