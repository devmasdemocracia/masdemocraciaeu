if Rails.env.production?

  require 'aws-sdk'

  Aws.config.update({
    hostname: Rails.application.secrets.s3_hostname
    region: Rails.application.secrets.s3_region,
    bucket: Rails.application.secrets.s3_bucket,
    credentials: Aws::Credentials.new(Rails.application.secrets.s3_access_key_id, Rails.application.secrets.s3_secret_access_key)
  })
end