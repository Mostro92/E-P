def say_hello(name,health=100)
"Ich bin #{name} mit einem Wert #{health} um #{get_time}"
end

def get_time
Time.now.strftime("%H:%M")
end


puts say_hello("Ludwig")
