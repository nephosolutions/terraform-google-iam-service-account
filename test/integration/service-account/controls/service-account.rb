#   Copyright 2018 NephoSolutions SPRL, Sebastian Trebitz
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

project_id = attribute('project_id')

service_account_email         = attribute('service_account_email')
service_account_name          = attribute('service_account_name')
service_account_display_name  = attribute('service_account_display_name')

control 'service_account' do
  describe google_service_account(name: service_account_name) do
    its('display_name') { should eq service_account_display_name }
    its('project_id') { should eq project_id }
  end
end

control 'service_account_key' do
  google_service_account_keys(service_account: 'projects/' + project_id + '/serviceAccounts/' + service_account_email).key_names.each do |sa_key_name|
    describe google_service_account_key(name: sa_key_name) do
      it { should exist }
      its('key_algorithm') { should eq "KEY_ALG_RSA_2048" }
    end
  end
end