% Regras para aconselhamento de investimentos
aconselhar_investimento(Acao, Lucro, Risco, Tendencia) :-
    potencial_investimento(Lucro, Risco, Tendencia),
    analisar_setor(Acao).

potencial_investimento(Lucro, Risco, Tendencia) :-
    Lucro > 10,
    Risco < 5,
    Tendencia = 'em_alta',
    write('Recomendação: Potencial investimento atrativo.'), nl.

potencial_investimento(Lucro, Risco, Tendencia) :-
    Lucro > 5,
    Risco < 8,
    Tendencia = 'estavel',
    write('Recomendação: Considerar investimento com cautela.'), nl.

potencial_investimento(_, _, _) :-
    write('Recomendação: Avalie cuidadosamente antes de investir.'), nl.

analisar_setor(Acao) :-
    setor_da_acao(Acao, Setor),
    write('Setor da ação: '), write(Setor), nl.

setor_da_acao('PETR4', 'Petróleo e Gás').
setor_da_acao('VALE3', 'Mineração').
setor_da_acao('ITUB4', 'Bancário').
% Adicione mais ações e setores conforme necessário.

% Exemplo de consulta:
% ?- aconselhar_investimento('PETR4', 15, 4, 'em_alta').
