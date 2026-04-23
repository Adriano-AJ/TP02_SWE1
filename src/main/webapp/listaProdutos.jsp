<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, gerenciador.ListaProdutosServlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
    <title>Lista de Produtos</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            color: #333;
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
        }
        .container {
            background: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 800px;
        }
        h2 {
            color: #007bff;
            border-bottom: 2px solid #f4f7f6;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .alert {
            background-color: #d4edda;
            color: #155724;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 20px;
            border: 1px solid #c3e6cb;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            text-align: left;
            padding: 12px;
            border-bottom: 1px solid #eee;
        }
        th {
            background-color: #f8f9fa;
            color: #555;
            text-transform: uppercase;
            font-size: 0.85rem;
        }
        tr:hover {
            background-color: #fcfcfc;
        }
        .actions {
            display: flex;
            gap: 10px;
        }
        .btn-edit, .btn-remove {
            text-decoration: none;
            font-size: 0.85rem;
            padding: 5px 10px;
            border-radius: 4px;
            transition: opacity 0.2s;
        }
        .btn-edit { background-color: #ffc107; color: #000; }
        .btn-remove { background-color: #dc3545; color: #fff; }
        .btn-edit:hover, .btn-remove:hover { opacity: 0.8; }
        
        .footer-nav {
            margin-top: 20px;
            display: block;
            text-decoration: none;
            color: #007bff;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Estoque de Produtos</h2>

        <c:if test="${not empty produto}">
            <div class="alert">
                Produto <strong>${produto}</strong> cadastrado com sucesso
            </div>
        </c:if>

        <table>
            <thead>
                <tr>
                	<th>Id</th>
            		<th>Nome</th>
            		<th>Descricao</th>
            		<th>Unidade</th>
            		<th>Qtd. Prevista</th>
            		<th>Preco Max.</th>
            		<th>Acoes</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${produtos}" var="p">
                    <tr>
                    	<td>${p.id}</td>
                        <td>${p.nome}</td>
                        <td>${p.descricao}</td>
                        <td>${p.unidadeCompra}</td>
                        <td>${p.qtdPrevistoMes}</td>
                        <td>${p.precoMaxComprado}</td>
                        <td class="actions">
                            <a href="mostraProduto?id=${p.id}" class="btn-edit">editar</a>
                            <a href="removeProduto?id=${p.id}" class="btn-remove">remover</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="index.html" class="footer-nav">Voltar ao Menu Principal</a>
    </div>

</body>
</html>