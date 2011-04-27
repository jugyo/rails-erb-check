require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "RailsErbCheck" do
  def erb(name)
    File.open(File.join(File.dirname(__FILE__), 'fixtures', name)).read
  end

  %w(valid1.erb valid2.erb).each do |erb_file|
    it { RailsErbCheck.valid_syntax?(erb(erb_file)).should be_true }
  end

  %w(invalid1.erb invalid2.erb).each do |erb_file|
    it { RailsErbCheck.valid_syntax?(erb(erb_file)).should be_false }
  end
end
