step '監視管理ページを表示する' do
  visit '/'
end

step '監視管理ページにウェブサイトが :count つ表示されている' do |count|
  expect(page).to have_selector('.website', count: count)
end
