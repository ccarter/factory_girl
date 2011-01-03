Rails.configuration.after_initialize {
  FactoryGirl.definition_file_paths = [
    File.join(Rails.root, 'test', 'factories'),
    File.join(Rails.root, 'spec', 'factories')
  ]
  FactoryGirl.find_definitions
}