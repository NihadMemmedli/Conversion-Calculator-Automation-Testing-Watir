require 'watir'
require 'page-object'
require 'page-object/page_factory'
require 'data_magic'

World(PageObject::PageFactory)

TEST_DATA_DIR = "./features/support/test_data"
DataMagic.yml_directory = './features/support/test_data/' #Tells data magic to look for data in
