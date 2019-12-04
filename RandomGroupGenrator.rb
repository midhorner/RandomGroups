keep_going = true # Lets's you generate groups to your heart's content!
while keep_going

    # array of student names
    student_names = [
        enter student names here
    ]

    # array group names
    group_names = [
    enter group names here
    ]

    good_input = true # sanitizing the input
    while good_input
        puts "How many peeps per group?"
        input = gets.chomp.to_i # if input not an number, ruby returns 0 // floats round down
        if input <= 0 || input > student_names.length # guarantees input works, or loop continues
            puts "Try a number between 1 and #{student_names.length}"
        else
            good_input = false
        end
        group_size = input
    end

    # first loop generates group name, then deletes the name from the array so it can't be used again
    # second loops works the same way; makes sure all names get used only once and the group sizes are accurate
    while student_names.size > 0 
        group_fill = 0
        group = group_names[rand(group_names.size)] # ruby has a random function that works on arrays/strings yay!
        puts
        puts group
        puts
        group_names.delete(group)
        while group_fill != group_size  # loops until number of names equals group size          
            name = student_names[rand(student_names.size)]        
            puts name
            student_names.delete(name)
            group_fill += 1
        end # if number of students % group size != 0, the last group is smaller
            # anyone willing to fix this, have at it!
    end
    puts
    puts "Would you like to go again? Y/N"
    no = gets.chomp.upcase
    if no == "N"
        puts "Later, yo!"
        keep_going = false
    else
        puts "Let's have another go!" # If you hit anything other than "N" or "n", you're looping, dumdum.
        puts
    end
end


    
