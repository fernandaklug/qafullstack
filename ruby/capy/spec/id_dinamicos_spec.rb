
describe  "ids dinamicos", :ids_dinamicos do
    before(:each) do
        visit "/access"
    end

#$ => termina com
#^ => começa com
#* => contém

    it 'cadastro' do
        find('input[id$=UsernameInput]').set 'fernanda'
        find('input[id^=PasswordInput]').set '123456'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro'
        sleep 3

    end
end

