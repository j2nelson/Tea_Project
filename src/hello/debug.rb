# /Tea_Project/src/hello/debug.rb
module Example::HelloWorld

  # Reload extension by running this method from the Ruby Console:
  #   Example::HelloWorld.reload
  def self.reload
    original_verbose = $VERBOSE
    $VERBOSE = nil
    pattern = File.join(__dir__, '**/*.rb')
    Dir.glob(pattern).each { |file|
      # Cannot use `Sketchup.load` because its an alias for `Sketchup.require`.
      load file
    }.size
  ensure
    $VERBOSE = original_verbose
  end

end # module