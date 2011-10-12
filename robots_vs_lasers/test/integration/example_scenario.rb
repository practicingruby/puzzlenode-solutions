require_relative "../test_helper"

describe "Running against the PuzzleNode example" do
  it "should produce output matching the sample output" do
    sample_input = "#{ROBOTIC_DATA_DIR}/sample-input.txt"
    application  = Robotic::Application.new([sample_input])

    expected_output = File.read("#{ROBOTIC_DATA_DIR}/sample-output.txt")

    assert_output(expected_output) do
      application.run
    end
  end
end
