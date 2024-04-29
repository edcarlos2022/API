
Given("a string de entrada {string}") do |input_string|
    @input_string = input_string
  end
  
  Given("os marcadores {string}") do |markers_string|
    @markers = markers_string.split(',').map(&:strip)
  end
  
  Given('os marcadores [{string}, {string}]') do |marker1, marker2|
    @markers = [marker1, marker2]
  end
  
  Given('os marcadores [{string}, {string}, {string}, {string}]') do |marker1, marker2, marker3, marker4|
    @markers = [marker1, marker2, marker3, marker4]
  end
  
  Then("a saída esperada é {string}") do |expected_output|
    actual_output = remover_substrings(@input_string, @markers)
    expect(actual_output).to eq(expected_output)
  end
  
  def remover_substrings(string, markers)
    markers.each do |marker|
      index = string.index(marker)
      string = string.slice(0, index) if index
    end
    string.strip
  end
  