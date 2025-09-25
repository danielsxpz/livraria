class LibraryController < ApplicationController
  def index

@books = [
  # ----------------------------------
  # 1-10: Clássicos e Ficção
  # ----------------------------------
  {
    titulo: "A Peste",
    autor: "Albert Camus",
    categoria: "Ficção Filosófica",
    status: "disponível",
    observacoes: "Reflexão profunda sobre a condição humana e o absurdo."
  },
  {
    titulo: "Moby Dick",
    autor: "Herman Melville",
    categoria: "Ficção Clássica",
    status: "emprestado",
    observacoes: "Épico sobre obsessão e a natureza."
  },
  {
    titulo: "Ulisses",
    autor: "James Joyce",
    categoria: "Ficção Experimental",
    status: "disponível",
    observacoes: "Conhecido pela técnica de fluxo de consciência."
  },
  {
    titulo: "Mrs. Dalloway",
    autor: "Virginia Woolf",
    categoria: "Ficção Moderna",
    status: "disponível",
    observacoes: "Foco na vida interior de Clarissa Dalloway."
  },
  {
    titulo: "O Retrato de Dorian Gray",
    autor: "Oscar Wilde",
    categoria: "Ficção Gótica",
    status: "emprestado",
    observacoes: "Aborda a moralidade, beleza e juventude."
  },
  {
    titulo: "Guerra e Paz",
    autor: "Liev Tolstói",
    categoria: "Ficção Histórica",
    status: "disponível",
    observacoes: "Um dos romances mais longos e importantes da literatura mundial."
  },
  {
    titulo: "Anna Karenina",
    autor: "Liev Tolstói",
    categoria: "Ficção Clássica",
    status: "disponível",
    observacoes: "Análise da sociedade russa do século XIX."
  },
  {
    titulo: "Admirável Mundo Novo",
    autor: "Aldous Huxley",
    categoria: "Ficção Distópica",
    status: "emprestado",
    observacoes: "Visão futurista sobre engenharia genética e condicionamento."
  },
  {
    titulo: "Frankenstein",
    autor: "Mary Shelley",
    categoria: "Ficção Gótica",
    status: "disponível",
    observacoes: "Clássico que deu origem ao gênero de ficção científica."
  },
  {
    titulo: "O Som e a Fúria",
    autor: "William Faulkner",
    categoria: "Ficção Experimental",
    status: "disponível",
    observacoes: "Complexa narrativa não linear."
  },
  # ----------------------------------
  # 11-20: Fantasia e Ficção Científica
  # ----------------------------------
  {
    titulo: "Duna",
    autor: "Frank Herbert",
    categoria: "Ficção Científica",
    status: "disponível",
    observacoes: "Primeiro livro da aclamada série."
  },
  {
    titulo: "Fundação",
    autor: "Isaac Asimov",
    categoria: "Ficção Científica",
    status: "emprestado",
    observacoes: "Obra seminal sobre psicohistória."
  },
  {
    titulo: "O Guia do Mochileiro das Galáxias",
    autor: "Douglas Adams",
    categoria: "Ficção Científica",
    status: "disponível",
    observacoes: "Comédia de ficção científica altamente influente."
  },
  {
    titulo: "As Brumas de Avalon",
    autor: "Marion Zimmer Bradley",
    categoria: "Fantasia Épica",
    status: "disponível",
    observacoes: "Releitura das lendas arturianas sob a perspectiva feminina."
  },
  {
    titulo: "A Roda do Tempo: O Olho do Mundo",
    autor: "Robert Jordan",
    categoria: "Fantasia Épica",
    status: "emprestado",
    observacoes: "Volume introdutório da extensa série."
  },
  {
    titulo: "Blade Runner (Androides Sonham com Ovelhas Elétricas?)",
    autor: "Philip K. Dick",
    categoria: "Cyberpunk / Ficção Científica",
    status: "disponível",
    observacoes: "Base para o famoso filme 'Blade Runner'."
  },
  {
    titulo: "Mistborn: O Império Final",
    autor: "Brandon Sanderson",
    categoria: "Fantasia High Fantasy",
    status: "disponível",
    observacoes: "Início da trilogia."
  },
  {
    titulo: "O Nome do Vento",
    autor: "Patrick Rothfuss",
    categoria: "Fantasia High Fantasy",
    status: "emprestado",
    observacoes: "Primeiro livro da Crônica do Matador do Rei."
  },
  {
    titulo: "Viagem ao Centro da Terra",
    autor: "Júlio Verne",
    categoria: "Aventura / Ficção Científica",
    status: "disponível",
    observacoes: "Clássico da aventura científica."
  },
  {
    titulo: "Hyperion",
    autor: "Dan Simmons",
    categoria: "Ficção Científica",
    status: "disponível",
    observacoes: "Inspirado em 'Contos de Canterbury'."
  },
  # ----------------------------------
  # 21-30: Suspense e Mistério
  # ----------------------------------
  {
    titulo: "Garota Exemplar",
    autor: "Gillian Flynn",
    categoria: "Thriller Psicológico",
    status: "emprestado",
    observacoes: "Trama cheia de reviravoltas."
  },
  {
    titulo: "O Silêncio dos Inocentes",
    autor: "Thomas Harris",
    categoria: "Thriller / Horror",
    status: "disponível",
    observacoes: "Apresenta o icônico personagem Hannibal Lecter."
  },
  {
    titulo: "E Não Sobrou Nenhum (Os Dez Negrinhos)",
    autor: "Agatha Christie",
    categoria: "Mistério Policial",
    status: "disponível",
    observacoes: "Um dos maiores mistérios de todos os tempos."
  },
  {
    titulo: "O Código Da Vinci",
    autor: "Dan Brown",
    categoria: "Suspense",
    status: "emprestado",
    observacoes: "Bestseller mundial, parte da série Robert Langdon."
  },
  {
    titulo: "A Garota no Trem",
    autor: "Paula Hawkins",
    categoria: "Thriller Psicológico",
    status: "disponível",
    observacoes: "Suspense moderno com narrador não confiável."
  },
  {
    titulo: "Um Estudo em Vermelho",
    autor: "Arthur Conan Doyle",
    categoria: "Mistério Policial",
    status: "disponível",
    observacoes: "Primeira aparição de Sherlock Holmes."
  },
  {
    titulo: "A Mulher de Preto",
    autor: "Susan Hill",
    categoria: "Horror Gótico",
    status: "disponível",
    observacoes: "Clássico moderno de fantasmas."
  },
  {
    titulo: "Ponto de Impacto",
    autor: "Michael Crichton",
    categoria: "Thriller Tecnológico",
    status: "emprestado",
    observacoes: "Tensão e ciência se encontram."
  },
  {
    titulo: "O Iluminado",
    autor: "Stephen King",
    categoria: "Horror",
    status: "disponível",
    observacoes: "História clássica de terror psicológico em um hotel isolado."
  },
  {
    titulo: "Big Little Lies",
    autor: "Liane Moriarty",
    categoria: "Mistério / Drama",
    status: "disponível",
    observacoes: "Um segredo em uma comunidade de elite."
  },
  # ----------------------------------
  # 31-40: Não-Ficção e História
  # ----------------------------------
  {
    titulo: "Uma História do Mundo em 10 Capítulos e 1/2",
    autor: "Julian Barnes",
    categoria: "Não-Ficção / História",
    status: "disponível",
    observacoes: "Abordagem criativa de eventos históricos."
  },
  {
    titulo: "Armas, Germes e Aço",
    autor: "Jared Diamond",
    categoria: "História / Antropologia",
    status: "emprestado",
    observacoes: "Vencedor do Prêmio Pulitzer."
  },
  {
    titulo: "O Poder do Hábito",
    autor: "Charles Duhigg",
    categoria: "Autoajuda / Ciência Comportamental",
    status: "disponível",
    observacoes: "Explica a ciência por trás de como criamos e mudamos hábitos."
  },
  {
    titulo: "Pensar, Rápido e Devagar",
    autor: "Daniel Kahneman",
    categoria: "Psicologia / Ciência Comportamental",
    status: "disponível",
    observacoes: "Obra fundamental sobre a tomada de decisões."
  },
  {
    titulo: "21 Lições para o Século 21",
    autor: "Yuval Noah Harari",
    categoria: "Não-Ficção / Atualidades",
    status: "emprestado",
    observacoes: "Continuação das ideias de 'Sapiens'."
  },
  {
    titulo: "Para Entender o Brasil",
    autor: "Laurentino Gomes",
    categoria: "História Brasileira",
    status: "disponível",
    observacoes: "Análise histórica moderna."
  },
  {
    titulo: "A Revolução dos Bichos",
    autor: "George Orwell",
    categoria: "Ficção Política",
    status: "disponível",
    observacoes: "Fábula alegórica sobre o stalinismo."
  },
  {
    titulo: "Breves Respostas para Grandes Perguntas",
    autor: "Stephen Hawking",
    categoria: "Ciência Popular",
    status: "disponível",
    observacoes: "Publicação póstuma."
  },
  {
    titulo: "Elon Musk",
    autor: "Ashlee Vance",
    categoria: "Biografia",
    status: "emprestado",
    observacoes: "Relato da vida do empresário."
  },
  {
    titulo: "Mitologia Nórdica",
    autor: "Neil Gaiman",
    categoria: "Fantasia / Mitologia",
    status: "disponível",
    observacoes: "Recriação dos mitos de Thor e Loki."
  },
  # ----------------------------------
  # 41-50: Outros Gêneros
  # ----------------------------------
  {
    titulo: "A Cor Púrpura",
    autor: "Alice Walker",
    categoria: "Ficção Americana",
    status: "disponível",
    observacoes: "Vencedor do Prêmio Pulitzer e National Book Award."
  },
  {
    titulo: "Capitães da Areia",
    autor: "Jorge Amado",
    categoria: "Ficção Brasileira",
    status: "emprestado",
    observacoes: "Clássico sobre a vida de crianças de rua em Salvador."
  },
  {
    titulo: "Cujo",
    autor: "Stephen King",
    categoria: "Horror",
    status: "disponível",
    observacoes: "Terror com um cão raivoso."
  },
  {
    titulo: "Sidarta",
    autor: "Hermann Hesse",
    categoria: "Ficção Filosófica",
    status: "disponível",
    observacoes: "Jornada espiritual na Índia."
  },
  {
    titulo: "As Torres de Karran",
    autor: "Autora Desconhecida",
    categoria: "Fantasia",
    status: "disponível",
    observacoes: "Lançamento recente."
  },
  {
    titulo: "Extraordinário",
    autor: "R.J. Palacio",
    categoria: "Ficção Jovem Adulto",
    status: "emprestado",
    observacoes: "História emocionante sobre aceitação."
  },
  {
    titulo: "O Exorcista",
    autor: "William Peter Blatty",
    categoria: "Horror",
    status: "disponível",
    observacoes: "Um dos livros de terror mais influentes de todos os tempos."
  },
  {
    titulo: "Caminhos Cruzados",
    autor: "Érico Veríssimo",
    categoria: "Ficção Brasileira",
    status: "disponível",
    observacoes: "Retrato da vida urbana no Sul do Brasil."
  },
  {
    titulo: "Vidas Secas",
    autor: "Graciliano Ramos",
    categoria: "Ficção Brasileira",
    status: "emprestado",
    observacoes: "Clássico do modernismo, retratando a seca no Nordeste."
  },
  {
    titulo: "O Homem que Calculava",
    autor: "Malba Tahan",
    categoria: "Ficção Matemática",
    status: "disponível",
    observacoes: "Ficção com desafios matemáticos."
  }
]
  end
end