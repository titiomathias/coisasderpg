def formating(retorno):
    itens_retornados = []

    for item in retorno:
        for i in item:
            if len(i) >= 5:
                resultado = f"""
Nome: {i[1]}
Tipo: {i[2]}
Duração: {i[3]}
Descrição: {i[4]}\n
----------------------------------------------------
\n"""
                itens_retornados.append(resultado)
            else:
                resultado2 = f"""
Nome: {i[1]}
Tipo: {i[2]}
Descrição: {i[3]}\n
----------------------------------------------------
\n"""
                itens_retornados.append(resultado2)
    return itens_retornados
