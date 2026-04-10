<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Portal Router - Globaletelcel S.A.S</title>
<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Segoe UI',sans-serif;}
body{display:flex;justify-content:center;align-items:center;height:100vh;background:linear-gradient(135deg,#4facfe,#00f2fe);padding:10px;}
.container{background:white;padding:30px 20px;width:100%;max-width:400px;border-radius:20px;box-shadow:0 15px 40px rgba(0,0,0,0.2);text-align:center;animation:fadeIn 1s ease;}
@keyframes fadeIn{from{opacity:0;transform:translateY(20px);}to{opacity:1;transform:translateY(0);}}
.company-name{font-size:18px;color:#0073e6;margin-bottom:10px;font-weight:bold;}
h2{margin-bottom:20px;color:#0073e6;font-size:20px;}
select,input{width:100%;padding:12px;margin-bottom:15px;border-radius:10px;border:1px solid #ccc;font-size:16px;outline:none;}
select:focus,input:focus{border-color:#0073e6;box-shadow:0 0 8px rgba(0,115,230,0.3);}
button{width:100%;padding:12px;border:none;border-radius:10px;background:#0073e6;color:white;font-size:16px;cursor:pointer;transition:0.3s;}
button:hover{background:#005bb5;}
.footer{margin-top:20px;font-size:12px;color:#777;}
@media (max-width:480px){
    .container{padding:25px 15px;border-radius:15px;}
    h2{font-size:18px;}
    select,input{font-size:14px;padding:10px;}
    button{font-size:14px;padding:10px;}
}
</style>
</head>
<body>

<div class="container">
    <div class="company-name">Globaletelcel S.A.S</div>
    <h2>Acceso Directo al Router</h2>

    <!-- Selección de IPs predefinidas -->
    <select id="routerSelect">
        <option value="">Selecciona un router</option>
        <option value="192.168.1.1">Router 1 - 192.168.1.1</option>
        <option value="192.168.0.1">Router 2 - 192.168.0.1</option>
    </select>

    <!-- Campo manual si desea otra IP -->
    <input type="text" id="manualIP" placeholder="O ingresa otra IP manualmente">

    <button onclick="goRouter()">Ingresar</button>
    <div class="footer">© 2026 Globaletelcel S.A.S • Usuario y contraseña del router requeridos</div>
</div>

<script>
function goRouter(){
    const selectIP = document.getElementById("routerSelect").value.trim();
    const manualIP = document.getElementById("manualIP").value.trim();

    // Prioriza la IP manual si se ingresa
    const ip = manualIP !== "" ? manualIP : selectIP;

    if(ip === ""){
        alert("Por favor selecciona o ingresa la IP del router");
        return;
    }

    // Redirige directamente al router
    window.location.href = `http://${ip}`;
}
</script>

</body>
</html>
