# Ruby é uma linguagem consierada puramente orientada a objetos
# Porque no ruby tudo são objetos

# classe possui atributos e métodos
# Características e ações

# carro (nome, modelo, marca, cor, quantidade de portas, etc)
# ligar, buzinar,parar, etc

class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro está pronto para iniciar o trajeto'
    end
end

civic = Carro.new
civic.nome = 'civic'

puts civic.nome

civic.ligar