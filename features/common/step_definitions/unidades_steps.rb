Dado('que acesso a pagina de unidades') do
    click_link 'Unidades'
end

Quando('clico na primeira unidade') do
    uni = UnidadeScreen.new
    sleep 2
    
    #@text = uni.titulos_lista_unidades[0].text
    uni.primeira_unidade[0].click
end

Quando('pesquiso pela unidade {string}') do |string|
    uni = UnidadeScreen.new
    uni.input_buscas[1].set string
    uni.input_buscas[1].native.send_keys(:return)
end

Quando('devo ver a primeira unidade com o texto {string}') do |string|
    uni = UnidadeScreen.new
    uni.titulos_lista_unidades[0].text
end

Quando('acesso para ver o mapa') do
    uni = UnidadeScreen.new
    sleep 1
    @unidades = uni.endereco_unidade[0].text.split(',')[0]
    click_button 'Ver no mapa'
end

Então('vejo o mapa com o endereço que está na capa') do
    uni = UnidadeScreen.new
    sleep 1
    uni.verifica_texto_unidade uni.info_popup.text, @unidades
end

Então('devo ser direcionado para a pagina da unidade clicada') do
    uni = UnidadeScreen.new
    sleep 2
    uni.verifica_texto_unidade @text, news.titulo_unidade.text
end

Quando("estou dentro de detalhes da unidade e clico no botão de agendar exame") do 
    uni = UnidadeScreen.new
    uni.uni.primeira_unidade.click
    click_on(botao_agendar_uni)
end 

Então("devo ver o modal com as informações de canais de atendimento") do 
    expect(page).to have_content("Agendar exame")
    expect(page).to have_content("Whatsapp")
    expect(page).to have_content("Messenger")
    expect(page).to have_content("Escolha como você gostaria de agendar:")
end   


  
