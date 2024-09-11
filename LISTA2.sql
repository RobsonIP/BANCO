-- E-commerce e Gestão de Inventário:

-- exercício 4
SELECT                                                                                                       
    ip.item_pedido_id,
    ip.pedido_id,
    p.nome AS nome_produto,
    ip.quantidade,
    ip.preco_unitario
FROM 
    itens_pedido ip
INNER JOIN 
    produtos p ON ip.produto_id = p.produto_id;


-- Sistema de Gestão de Relacionamento com o Cliente (CRM)
-- exercício 1
SELECT 
    clientes.nome AS nome_cliente, 
    clientes.email, 
    clientes.telefone, 
    interacoes.tipo AS tipo_interacao, 
    interacoes.data_interacao, 
    interacoes.detalhes
FROM 
    clientes
LEFT JOIN 
    interacoes ON clientes.cliente_id = interacoes.cliente_id;

-- Finanças e Controle Orçamentário    
-- exercicio 3      
SELECT                                                                                                                           
    t.transacao_id,
    t.conta_id,
    t.tipo AS tipo_transacao,
    t.valor,
    t.data_transacao,
    t.descricao,
    o.categoria AS categoria_orcamento
FROM 
    transacoes t
LEFT JOIN 
    orcamentos o ON t.valor BETWEEN o.valor_planejado * 0.9 AND o.valor_planejado * 1.1
        AND o.data_inicio <= t.data_transacao
        AND o.data_fim >= t.data_transacao
ORDER BY 
    t.transacao_id;

-- Saúde e Gestão de Prontuários Eletrônicos  
-- exercicio 1              
SELECT                                                                                       
    p.nome AS nome_paciente,
    pr.medico AS nome_medico,
    pr.diagnostico,
    pr.prescricao,
    pr.observacoes,
    pr.data_consulta
FROM 
    prontuarios pr
INNER JOIN 
    pacientes p ON pr.paciente_id = p.paciente_id
ORDER BY 
    pr.data_consulta DESC;

-- Logística e Cadeia de Suprimentos
-- exercício 1 
SELECT 
    produtos.nome AS nome_produto, 
    produtos.descricao, 
    produtos.preco, 
    produtos.estoque, 
    fornecedores.nome AS nome_fornecedor, 
    fornecedores.contato, 
    fornecedores.telefone
FROM 
    produtos
LEFT JOIN 
    fornecedores ON produtos.fornecedor_id = fornecedores.fornecedor_id;