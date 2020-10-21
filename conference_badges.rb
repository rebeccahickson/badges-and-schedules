def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.collect { |name| badge_maker(name)}
end

def assign_rooms(array)
    new_arr = []
    array.each_with_index do |name, index| 
        room_num = index + 1
        new_arr.push("Hello, #{name}! You'll be assigned to room #{room_num}!")
    end
    new_arr
    
end

def printer(array)
    badge_arr = batch_badge_creator(array)
    room_arr = assign_rooms(array)
    counter = 0
    while counter < array.size do 
        puts badge_arr[counter]
        puts room_arr[counter]
        counter += 1
    end
end
