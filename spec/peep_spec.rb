describe Peep do

  context 'Demonstration of how datamapper works' do

    it 'should be created and then retrieved from the db' do
      expect(Peep.count).to eq(0)
      Peep.create(chitname: 'Joanne Fearon',
                  message: 'Have a great 3 day weekend!')
      expect(Peep.count).to eq(1)
      peep = Peep.first
      expect(peep.chitname).to eq('Joanne Fearon')
      expect(peep.message).to eq('Have a great 3 day weekend!')
      peep.destroy
      expect(Peep.count).to eq(0)
    end

  end

end
