
describe 'login no cadastro', :login3 do

    before(:each) do
        visit '/access'
    end

    it 'login com sucesso' do

        # login_form = find('#login')
        # login_form.find('input[name=username]').set 'stark'
        # login_form.find('input[name=password]').set 'jarvis!'

        # click_button 'Entrar'
        # expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'

            click_button 'Entrar'
        end      
        
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end


    it 'cadastro com sucesso' do
        within('#signup') do
            find('input[name=username]').set 'fernando'
            find('input[name=password]').set '123456'

            click_link 'Criar Conta'
        end   

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'



    end

end