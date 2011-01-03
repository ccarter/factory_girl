Rails.configuration.after_initialize {
  Factory.definition_file_paths = [
    File.join(Rails.root, 'test', 'factories'),
    File.join(Rails.root, 'spec', 'factories')
  ]
  Factory.find_definitions
}