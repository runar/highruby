clearing :on

guard :shotgun, server: 'puma' do
  watch(%r{^app/.*\.rb})
  watch('config.ru')
end

guard :minitest do
  watch(%r{^app/highruby\.rb$})         { 'test' }
  watch(%r{^app/(.*)\.rb$})             { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^test/(.*)_test\.rb$})
  watch(%r{^test/test_helper\.rb$})     { 'test' }
end
