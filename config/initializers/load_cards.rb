require 'yaml'
ALLCARDS = YAML.load_file( File.join( Rails.root, 'db', 'cards.yml' ))
