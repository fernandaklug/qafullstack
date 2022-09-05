

describe 'caixa de opções', :dropdown do
    it 'item específico simples' do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 #temporário
    end

    it 'item específico com o find', :item do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scottrspec --tag @sample Lang').select_option
        sleep 3 #temporário
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3 #temporário
    end

end