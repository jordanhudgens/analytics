
guard 'rspec', :wait => 60, :all_after_pass => false, :cli => '--drb' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/factories/.+\.rb$})
  watch('spec/spec_helper.rb') { "spec" }
  watch(%r{^spec/support/(.+)\.rb$}) { "spec" }
  watch('analytics.rb') { "spec" }
end

