step ':url へのリンクが表示されている' do |url|
  expect(page).to have_selector("a[href='#{url}']")
end

step ':url へのリンクが表示されていない' do |url|
  expect(page).to_not have_selector("a[href='#{url}']")
end

step ':locator に :text と入力する' do |locator, text|
  fill_in locator, with: text
end

step ':locator をクリックする' do |locator|
  click_on locator
end
