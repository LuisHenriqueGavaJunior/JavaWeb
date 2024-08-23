<%@ page contentType="text/html;charset=UTF-8" %> <!-- permite acentos e outros caracteres especiais -->
<%@ taglib uri="jakarta.tags.core" prefix="c" %> <!-- importando tags especiais, atribuindo o prefixo c -->

<%
String mensagem = "preto";
session.setAttribute("Mensagem", mensagem);

String texto = "a cor era ";
texto += request.getParameter("cor");

int valores[] = new int[10]; // Corrigido para int valores[] = new int[10];

for(int cont = 0; cont < valores.length; cont++){ 
    valores[cont] = cont + 1; 
}

session.setAttribute("numeros", valores);
session.setAttribute("texto", texto); 
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java WEB</title>
</head>
<body>
    <h1>Capítulo 1</h1>
    Mensagem: ${Mensagem}
    <br>
    Eu me lembro, ${texto} 

    <ul>
        <c:forEach var="n" items="${numeros}">
            <li>${n}</li>
        </c:forEach>
    </ul>
</body>
</html>