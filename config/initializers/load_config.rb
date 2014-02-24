full_config = YAML.load_file("#{Rails.root}/config/config.yml")
if full_config[Rails.env].nil?
  CONFIG = (full_config["global"]).symbolize_keys
else
  CONFIG = full_config[Rails.env].merge(full_config["global"]).symbolize_keys
end
