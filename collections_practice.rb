def begins_with_r(collection)
  collection.all? do |string|
    string[0] == "r"
  end
end

def contain_a(collection)
  collection.select {|x| x.include?("a")}
end

def first_wa(collection)
  collection.find {|x| x[0..1] == "wa"}
end

def remove_non_strings(collection)
  collection.keep_if {|obj| obj.is_a? String} 
end

def count_elements(collection)
    collection.each do |x|
        count = collection.count(x)
        collection.uniq!
        x[:count] = count
    end
end

def merge_data(keys, data)
  keys.collect do |hash| 
    hash.merge(data[0][hash[:first_name]])
  end
end

def find_cool(identifier)
  identifier.find_all
  