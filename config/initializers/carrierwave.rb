unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAT31QMFXGEWK3KZUQ',   #どこ？
      aws_secret_access_key: 'buQo5Zf+JXTjUSXBweE0BgNHIV6UTq7nTA0z7C68',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'rails-photo'
    config.cache_storage = :fog
  end
end