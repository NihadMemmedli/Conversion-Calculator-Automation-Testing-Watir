module Common
  def Common.get_url route
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["urls"][route]
  end
  def Common.get_data route
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["conversion_data"][route]
  end
  def Common.get_all route
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")[route]
  end
end