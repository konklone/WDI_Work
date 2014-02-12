module Variables

	def set_it_up
		@choice1 = "yes"
		@choice2 = "no"
		
		@string_for_url1 = @string.chomp("?").delete " "
		@url_link_choice1 = @string_for_url1 +  "/" + @choice1
		
		@string_for_url2 = @string.chomp("?").delete " "
		@url_link_choice2 = @string_for_url2 +  "/" + @choice2
	end
end
