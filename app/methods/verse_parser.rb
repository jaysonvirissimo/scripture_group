# frozen_string_literal: true

class VerseParser
  REPLACEMENT_CHARACTER = '�'

  def initialize(line)
    @line = line
  end

  def call
    create_book
    create_chapter
    create_verse
  end

  private

  attr_reader :book, :chapter, :line

  def chapter_number
    chapter_and_verse_numbers.first
  end

  def create_book
    @book ||= Book.find_or_create_by(name: book_name)
  end

  def create_chapter
    @chapter ||= Chapter.find_or_create_by(book: book, number: chapter_number)
  end

  def create_verse
    Verse.find_or_create_by(chapter: chapter, number: verse_number, text: text)
  end

  def book_name
    meta_data.take(meta_data.length - 1).join(' ')
  end

  def chapter_and_verse_numbers
    meta_data.last.split(':')
  end

  def meta_data
    line.split("\t").first.split(' ')
  end

  def text
    line.split("\t").last.delete(REPLACEMENT_CHARACTER).chomp
  end

  def verse_number
    chapter_and_verse_numbers.last
  end
end
