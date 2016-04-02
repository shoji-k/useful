require 'spec_helper'

describe package('httpd'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/etc/passwd') do
  it { should be_file }
end

describe file('/var/log/apache2') do
  it { should be_directory }
end

describe command('ls -al /') do
  its(:stdout) { should match /bin/ }
end

describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(3306) do
  it { should be_listening.on('127.0.0.1').with('tcp') }
end

db_user = "user"
db_password = "password"
db_name = "sample"

describe command("mysqlshow -u#{db_user} -p#{db_password}") do
  # its (:stdout) { should eq 'user' }
  its (:stdout) { should match /Databases/ }
end

# describe command("mysqlshow -u#{db_user} -p#{db_password} #{db_name}") do
#   its (:stdout) { should match /Database:\ #{db_name}/ }
# end

describe command("mysqladmin -u#{db_user} -p#{db_password} variables |grep character_set_server") do
  its (:stdout) { should match /utf8/ }
end

# check php.ini for cli
# todo: fail 2 parameters
php_values = [
  {'default_mimetype' => 'text/html'},
  # {'max_execution_time' => 30},
  {'memory_limit' => '-1'},
  {'post_max_size' => '8M'},
  {'upload_max_filesize' => '2M'},
  # {'max_input_time' => 60},
  {'date.timezone' => 'Asia/Tokyo'}
]

describe 'PHP config parameters' do
  php_values.each do |php_value|
    context php_config(php_value.keys.first) do
      its(:value) { should eq php_value[php_value.keys.first] }
    end
  end
end

