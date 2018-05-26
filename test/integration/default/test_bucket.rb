require 'awspec'
require 'aws-sdk'
require 'rhcl'

describe s3_bucket('alb.logs.example') do
  it { should exist }
  it do
   should have_lifecycle_rule(
     id: 'AllLogs',
     status: 'enabled',
     expiration: { days: 90 },
     transitions:[{days: 31, storage_class: 'STANDARD_IA'},
                  {days: 60, storage_class: 'GLACIER'}],
   )
 end
end
