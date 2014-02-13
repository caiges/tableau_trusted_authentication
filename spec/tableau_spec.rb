require 'tableau_trusted_auth'

describe TableauTrustedAuth::View do

  let!(:view) { TableauTrustedAuth::View.new 'http://127.0.0.1', 'blars' }

  describe :get_ticket do

    context 'when requesting a view' do

      it 'should request a ticket from tableau' do
        TableauTrustedAuth::View.stub(:post) { '1234-abcd' }
        expect(view).to receive(:get_ticket)
        view.url('/tacoshrimp')
      end

      it 'should return a url to use when redirecting or loading a framed view' do
        TableauTrustedAuth::View.stub(:post) { '1234-abcd' }
        expect(view.url('tacoshrimp')).to eq('http://127.0.0.1/trusted/1234-abcd/views/tacoshrimp')
      end

    end

  end

end
