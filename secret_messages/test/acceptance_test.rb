require "minitest/autorun"

CURRENT_DIR = File.expand_path(File.dirname(__FILE__))

describe "The seekrit executable" do
  it "must be able to crack the sample code" do
    results = `ruby #{CURRENT_DIR}/../bin/seekrit data/simple_cipher.txt` 
    results.must_equal(File.read("#{CURRENT_DIR}/../data/simple_out.txt"))
  end
end
