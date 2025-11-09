<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>MY BUS</title>
  <style>
    
    :root{
      --brand-red: #e53935;
      --brand-dark: #991b1b;
      --muted:#6b6b6b;
      --glass: rgba(255,255,255,0.9);
      --radius:12px;
      font-family: Inter, system-ui, -apple-system, "Segoe UI", Roboto, Arial, sans-serif;
    }
    *{box-sizing:border-box}
    body{margin:0;background:linear-gradient(180deg,#fff #fff7f7);color:#111}

    header{display:flex;align-items:center;justify-content:space-between;padding:18px 28px;background:linear-gradient(180deg,rgba(255,255,255,0.9),rgba(255,255,255,0.7));position:sticky;top:0;z-index:50;border-bottom:1px solid rgba(0,0,0,0.04)}
    .logo{display:flex;align-items:center;gap:12px}
    .logo .mark{width:44px;height:44px;border-radius:8px;background:var(--brand-red);display:flex;align-items:center;justify-content:center;color:white;font-weight:800;font-size:18px}
    .logo h1{margin:0;font-size:18px;color:var(--brand-dark)}

    nav{display:flex;gap:14px;align-items:center}
    nav a{color:var(--brand-dark);text-decoration:none;font-weight:600}
    .btn{padding:10px 14px;border-radius:10px;border:0;cursor:pointer;font-weight:700}
    .btn-primary{background:var(--brand-red);color:white}
    .btn-ghost{background:transparent;color:var(--brand-dark)}

    
    .hero{display:grid;grid-template-columns:1fr 420px;gap:28px;align-items:center;padding:48px 28px}
    .hero-left{max-width:820px}
    .eyebrow{display:inline-block;background:#ffecebe6;color:var(--brand-dark);padding:6px 10px;border-radius:999px;font-weight:700;font-size:13px}
    h2{font-size:44px;margin:12px 0;color:var(--brand-dark)}
    p.lead{margin:0;color:var(--muted);font-size:16px}

    .search-card{background:white;padding:18px;border-radius:12px;box-shadow:0 8px 30px rgba(0,0,0,0.08)}
    .search-row{display:flex;gap:10px}
    .field{flex:1;display:flex;flex-direction:column}
    label{font-size:12px;color:#555;margin-bottom:6px}
    input,select{padding:12px;border-radius:8px;border:1px solid #eee;font-size:14px}
    .search-actions{display:flex;gap:10px;margin-top:10px}

    
    .routes{padding:18px 28px}
    .routes-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:12px}
    .route{background:linear-gradient(180deg,#fff,#fff6f6);border:1px solid rgba(0,0,0,0.04);padding:12px;border-radius:10px}
    .route h4{margin:0;color:var(--brand-dark)}
    .route p{margin:6px 0 0 0;color:var(--muted);font-size:13px}

    
    .benefits{display:flex;gap:12px;padding:18px 28px}
    .benefit{flex:1;background:white;padding:14px;border-radius:10px;box-shadow:0 6px 18px rgba(0,0,0,0.06)}
    .benefit h5{margin:0 0 6px 0;color:var(--brand-dark)}

    footer{padding:22px 28px;margin-top:28px;border-top:1px solid rgba(0,0,0,0.04);color:#666}

  
    @media (max-width:900px){
      .hero{grid-template-columns:1fr;}
      .hero-illustration{display:none}
    }
  </style>
</head>
 
    <header>
    <div class="logo">
      <div class="mark">AK</div>
      <h1>MY BUS</h1>
    </div>
    <nav>
      <a href="bookking">Bus Tickets</a>
      <a href="admin">Admin</a>
      <a href="">trains</a>
      <a href="#">Offers</a>
      <button class="btn btn-primary">Sign In</button>
    </nav>
  </header>
<body>
<h1 style="color:red">vehicle details</h1>
 <% 
    if(session.getAttribute("username")==null){
    	response.sendRedirect("loginpage.jsp");
    } 
%>
    <c:forEach items="${search}" var="v">
      <p><strong>Bus No:</strong> ${v.busNumber}</p>
    <p><strong>From:</strong> ${v.arrivingPoint}</p>
    <p><strong>To:</strong> ${v.destination}</p>
    <p><strong>Time:</strong> ${v.time}</p>
    <hr>
</c:forEach>
 
</body>
</html>