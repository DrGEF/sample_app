module ApplicationHelper

	#Возвращает заголовок
	def full_title(page_title)
		@base_title = "Sample app"
		if page_title.empty?
			@base_title
		else
			"#{@base_title} | #{page_title}"
		end
	end

	#Выводит маленькую навигацию между страницами
	def menu
		@home  = link_to 'home' , static_pages_home_path
		@about = link_to 'about', static_pages_about_path
		@help  = link_to 'help' , static_pages_help_path
		@links = [@home, @about, @help]

		def view_menu
			@link_view = "<ul>"
			@links.each do |link|
				@link_view += "<li>#{link}</li>"
			end
			@link_view += "</ul>"
		end
		view_menu
	end

end
