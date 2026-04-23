<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Editar Produto</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
        }
        .card {
            background: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 500px;
        }
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 1.5rem;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        label {
            display: block;
            margin-bottom: 0.3rem;
            color: #666;
            font-size: 0.85rem;
            font-weight: 600;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 1rem;
        }
        input[type="text"]:focus {
            outline: none;
            border-color: #007bff;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 6px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 1rem;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 1rem;
            text-decoration: none;
            color: #6c757d;
            font-size: 0.85rem;
        }
    </style>
</head>
<body>

    <div class="card">
        <h2>Editar Detalhes do Produto</h2>
        
        <c:url value="/alteraProduto" var="linkAlteraProduto"/>

        <form action="${linkAlteraProduto}" method="post">
            
            <%-- Campo oculto para o ID --%>
            <input type="hidden" name="id" value="${produto.id}">

            <div class="form-group">
                <label>Nome do Produto</label>
                <input type="text" name="nome" value="${produto.nome}" required />
            </div>

            <div class="form-group">
                <label>Descricaoo</label>
                <input type="text" name="descricao" value="${produto.descricao}" />
            </div>

            <div class="form-group">
                <label>Unidade de Compra</label>
                <input type="text" name="unidadeCompra" value="${produto.unidadeCompra}" />
            </div>

            <div class="form-group">
                <label>Qtd Prevista no Mes</label>
                <input type="text" name="qtdPrevistoMes" value="${produto.qtdPrevistoMes}" />
            </div>

            <div class="form-group">
                <label>Preço Maximo Comprado</label>
                <input type="text" name="precoMaxComprado" value="${produto.precoMaxComprado}" />
            </div>
            
            <input type="submit" value="Salvar Alteracoes" />
            
        </form>

        <a href="listaProdutos" class="back-link">Cancelar e Voltar</a>
    </div>

</body>
</html>