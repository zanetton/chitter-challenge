feature 'User adds a new message' do
  scenario 'when browsing the homepage' do
    expect(Peep.count).to eq(0)
    visit '/'
    add_peep('Have a great 3 day weekend!', 'Joanne Fearon')
    expect(Peep.count).to eq(1)
    peep = Peep.first
    expect(peep.message).to eq('Have a great 3 day weekend!')
    expect(peep.chitname).to eq('Joanne Fearon')
  end

  def add_peep(message, chitname)
    within('#new-peep') do
      fill_in 'message', with: message
      fill_in 'chitname', with: chitname
      click_button 'Add peep'
    end
  end
end
