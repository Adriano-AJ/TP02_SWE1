<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>Cadastro de Produto</title>
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
        .form-row {
            display: flex;
            gap: 15px;
        }
        .form-row .form-group {
            flex: 1;
        }
        label {
            display: block;
            margin-bottom: 0.4rem;
            color: #666;
            font-size: 0.85rem;
            font-weight: 600;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 0.95rem;
        }
        input:focus {
            outline: none;
            border-color: #007bff;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #007bff;
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
            background-color: #0056b3;
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
        <h2>Cadastrar Novo Produto</h2>
        
        <c:url value="/novoProduto" var="linkServletNovoProduto"/>

        <form action="${linkServletNovoProduto}" method="post">
            
            <div class="form-group">
                <label for="nome">Nome do Produto</label>
                <input type="text" id="nome" name="nome" placeholder="Ex: Monitor Dell" required />
            </div>

            <div class="form-group">
                <label for="descricao">Descricao</label>
                <input type="text" id="descricao" name="descricao" placeholder="Breve descricao do item" />
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="unidadeCompra">Unidade de Compra</label>
                    <input type="number" id="unidadeCompra" name="unidadeCompra" placeholder="Ex: 10" required />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="qtdPrevistoMes">Qtd Prevista no Mes</label>
                    <input type="number" id="qtdPrevistoMes" name="qtdPrevistoMes" placeholder="0" />
                </div>
                <div class="form-group">
                    <label for="precoMaxComprado">Preco Max. Comprado</label>
                    <input type="text" id="precoMaxComprado" name="precoMaxComprado" placeholder="0.00" />
                </div>
            </div>
            
            <input type="submit" value="Salvar Produto" />
            
        </form>

        <a href="index.html" class="back-link">Cancelar e Voltar</a>
    </div>

</body>
</html>