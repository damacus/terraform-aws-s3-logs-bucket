require 'awspec'
require 'aws-sdk'
require 'rhcl'

describe s3_bucket('alb.logs.example') do
  it { should exist }
  it do
   should have_lifecycle_rule(
     id: 'AllLogs',
     expiration: { days: 90 },
     transitions: { days: 60, storage_class: 'GLACIER' },
     transitions: { days: 30, storage_class: 'STANDARD_IA' },
     status: 'Enabled'
   )
 end
end
