# Common module include methods for getting data from test_data file
module Common
  def self.get_url(route)
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")['urls'][route]
  end

  def self.get_data(route)
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")['conversion_data'][route]
  end

  def self.get_all(route)
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")[route]
  end
end