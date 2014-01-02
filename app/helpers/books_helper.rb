module BooksHelper

	def gravatar_for_book(book, options={size: 40})
    gravatar_id = Digest::MD5::hexdigest(book.id.to_s())
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: book.title, class: "gravatar")
	end


end
