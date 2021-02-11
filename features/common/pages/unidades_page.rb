class UnidadeScreen < SitePrism::Page

    elements :lista_unidades, '.sc-bdVaJa.gridcomponent__GridStyled-mj69zp-0', wait: 10
    elements :primeira_unidade, '.unit-cellcomponentstyle__UnitCellStyled-sc-135xmhl-0'
    element :titulo_unidade, '.typographycomponentstyle__H1-aidbcy-1', wait: 10
    elements :titulos_lista_unidades, '.typographycomponentstyle__H3-aidbcy-4'
    elements :input_buscas, '.text-fieldcomponentstyle__TextFieldStyled-qkauht-0'
    elements :endereco_unidade, '.typographycomponentstyle__Body-aidbcy-6'
    element :info_popup, '.unit-cellcomponentstyle__UnitCellStyled-sc-135xmhl-0'
    elements :botao_agendar_uni, '.buttoncomponentstyle__ButtonContentStyled-nmhj9m-3', text: 'Agendar exame'

    def verifica_texto_unidade texto1, texto2
        raise "Comparação entre o texto #{texto1} e o texto #{texto2} estão errado " unless texto1.include? texto2
    end

end