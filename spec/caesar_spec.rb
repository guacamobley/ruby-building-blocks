
require './caesar-cipher.rb'
RSpec.describe("Caesar Cipher")  do
  describe '#caesar_cipher' do
    it ("shifts characters forward") do
      expect(caesar_cipher("Caesar",14)).to eql("Qosgof")
    end
    it ("shifts characters backward") do
      expect(caesar_cipher("Caesar",-11)).to eql("Rpthpg")
    end
    it ("handles large forward shifts") do
      expect(caesar_cipher("Caesar",117)).to eql("Pnrfne")
    end
    it ("handles large backward shifts") do
      expect(caesar_cipher("Caesar",-118)).to eql("Omqemd")
    end
    it ("does not effect punctuation/spacing") do
      expect(caesar_cipher("C?a!e.s:'\"1234a r",14)).to eql("Q?o!s.g:'\"1234o f")
    end
  end

end