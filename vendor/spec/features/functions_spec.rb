describe 'Taking a some func' do

  let!(:user) { create(:user, email: "bob@mail.ru", password: "123456") }

  before(:each) do
    login("bob@mail.ru", "123456")
  end

  it "press questionnaires button after login" do
    expect(page).to new_questionnaire "Add questionnaire"
  end
end