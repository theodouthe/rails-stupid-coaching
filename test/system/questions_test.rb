# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end
  test "saying Hello yields a grumpy response from the coach" do
  visit ask_url
  fill_in "question", with: "Hello"
  click_on "Ask"

  assert_text "I don't care, get dressed and go to work!"
  end
# If the message is I am going to work, the coach will answer Great!

  test "saying I am going to work yields a Great! from the coach" do
  visit ask_url
  fill_in "question", with: "I am going to work"
  click_on "Ask"

  assert_text "Great!"
  end

# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise he will answer I don't care, get dressed and go to work!

end
