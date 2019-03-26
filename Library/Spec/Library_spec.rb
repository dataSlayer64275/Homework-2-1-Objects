require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../Library.rb')

class LibraryTest < Minitest::Test


library = Library([{
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
        }
      }
      {
      title: "harry_potter",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
        }
      }
      {
      title: "dungeons_and_dragons",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
        }
      }])








end
