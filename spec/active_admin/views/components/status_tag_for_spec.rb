RSpec.describe ActiveAdmin::Views::StatusTagFor do
  describe "#status_tag_for" do
    def status_tag_for(*args)
      render_arbre_component(status_tag_for_args: args) do
        status_tag_for(*assigns[:status_tag_for_args])
      end
    end

    describe 'default content for false' do
      subject { status_tag_for(false) }
      it { expect(subject.content).to eq 'No' }
    end

    describe 'default content for true' do
      subject { status_tag_for(true) }
      it { expect(subject.content).to eq 'Yes' }
    end

    describe 'content for true' do
      subject { status_tag_for(true, 'Yep', 'Nope') }
      it { expect(subject.content).to eq 'Yep' }
    end

    describe 'content for false' do
      subject { status_tag_for(false, 'Yep', 'Nope') }
      it { expect(subject.content).to eq 'Nope' }
    end

    describe 'content for true if one argument given' do
      subject { status_tag_for(true, 'Status') }
      it { expect(subject.content).to eq 'Status' }
    end

    describe 'content for false if one argument given' do
      subject { status_tag_for(false, 'Status') }
      it { expect(subject.content).to eq 'Status' }
    end
  end
end
