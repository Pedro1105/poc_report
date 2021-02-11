module NoticiaModule

    def valida_lista_data_noticias
        primeira_noticia = Date.parse lista_datas_noticias.first.text.gsub(' de ', '/').gsub("#{lista_datas_noticias.first.text.split[2]}", "#{convert_month lista_datas_noticias.first.text.split[2]}")
        segunda_noticia = Date.parse lista_datas_noticias[1].text.gsub(' de ', '/').gsub("#{lista_datas_noticias[1].text.split[2]}", "#{convert_month lista_datas_noticias[1].text.split[2]}")
        if primeira_noticia < segunda_noticia
            raise 'Primeira noticia apresentada tem a data menor que a segunda'
        end
    end

end