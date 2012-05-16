Fabricator(:user) do
  name { sequence { |i| "sample user #{i}" } }
  email { sequence { |i| "sample_#{rand}@gmail.com" }}
  password 'testpwd'
  password_confirmation 'testpwd'
end