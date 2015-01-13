module MakerTests
  def assert(result)
  	if !result
      raise "A test failed"
    end
  end
end