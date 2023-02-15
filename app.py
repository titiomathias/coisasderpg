import random
import PySimpleGUI as sg
import search
import format
import pyperclip

sg.theme("LightBrown3")

options_layout = [
     [sg.Button("Copiar", size=(18, 1))],
     [sg.Text("", size=(0, 6))],
     [sg.Button("Aleatório", size=(18, 1))],
     [sg.Text("", size=(0, 6))],
     [sg.Button("Limpar", size=(18, 1))]
]

layout = [
    [sg.Text("Pesquisa", size=(20, 1), font="Lucida", justification="left")],
    [sg.InputText(key="pesquisa", size=(25, 20), expand_y=True),
     sg.Combo(["Itens", "Poções", "Óleos", "Armas", "Ferramentas", "Objetos"], default_value="Itens", size=(10, 20), expand_y=True, key="item", enable_events=True),
     sg.Combo(["Tipos", "Comum", "Incomum", "Raro", "Muito Raro", "Lendário"], default_value="Tipos", size=(10, 20), expand_y=True, key="tipo", enable_events=True),
     sg.Button("Ir!")],
    [sg.Multiline("", key="retorno", size=(30, 20), disabled=True),
     sg.Column(options_layout)]
]

window = sg.Window("Coisas de RPG - Home", layout)

while True:
    event, values = window.read()
    if event == sg.WIN_CLOSED:
        break
    elif event == "Ir!":
        window["retorno"].update("")
        pesquisa = values["pesquisa"]
        filtro_item = values["item"]
        filtro_tipo = values["tipo"]

        retorno = search.start(pesquisa, filtro_item, filtro_tipo)

        itens_retornados = format.formating(retorno=retorno)

        for i in itens_retornados:
            window["retorno"].write(i)
    elif event == "Copiar":
        mystr = values["retorno"]
        pyperclip.copy(mystr)
    elif event == "Aleatório":
        window["retorno"].update("")

        filtro_item = values["item"]
        filtro_tipo = values["tipo"]

        retorno = search.start("", filtro_item, filtro_tipo)

        itens_retornados = format.formating(retorno=retorno)

        item_aleatorio = itens_retornados[random.randrange(0, len(itens_retornados))]

        window["retorno"].write(item_aleatorio)
    elif event == "Limpar":
        window["retorno"].update("")
        window["pesquisa"].update("")
        window["item"].update("Itens")
        window["tipo"].update("Tipos")
    else:
        pass