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

def remove_non_strings(array)
  array.delete_if {|e| !e.is_a?(String)}
end

def count_elements(array)
  uniq = array.uniq
  uniq.collect do |element|
    e = {}
    e = e.merge(element)
    e[:count] = array.count(e)
    e
  end
end

def merge_data(keys, data)
  result = []
  keys.each do |element|
    data.find do |e|
      k = e.keys
      d = element.values.first
      puts [k, d].inspect
      k == d
    end
  end
  result
end
