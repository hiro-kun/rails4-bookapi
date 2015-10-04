json.set! :books do
  json.array! @books do |book|
    json.extract! book, :isbn_code, :book_name, :price, :author
  end
end
