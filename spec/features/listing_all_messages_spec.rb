feature 'User browses the list of messages' do

  before(:each) do
    Peep.create(message: 'Have a great 3 day weekend!',
                chitname: 'Joanne Fearon')
  end

  scenario 'when opening the home page' do
    visit '/'
    expect(page).to have_content('Joanne Fearon')
  end
end
