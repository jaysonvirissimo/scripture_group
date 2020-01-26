class Section < ApplicationRecord
  belongs_to :book
  belongs_to :starting_chapter, class_name: 'Chapter'
  belongs_to :ending_chapter, class_name: 'Chapter'
  belongs_to :reading

  def chapters
    Chapter.where(
      book: book, 
      number: (starting_chapter.number..ending_chapter.number)
    )
  end

  def title
    "#{book.name}: #{starting_chapter.number} -- #{ending_chapter.number}"
  end
end
