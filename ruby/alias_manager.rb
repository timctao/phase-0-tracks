def name_swap(first_name, last_name)
	code_name = []
	code_name << first_name
	code_name << last_name
	code_name[0], code_name[1] = code_name[1], code_name[0]
	code_name.join(" ")
end

p name_swap("Felicia", "Torres")
