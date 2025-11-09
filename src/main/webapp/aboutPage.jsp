<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>About | MY BUS</title>

  <style>
    :root {
      --brand-red: #e53935;
      --brand-dark: #b71c1c;
      --muted: #666;
      font-family: Inter, system-ui, sans-serif;
    }

    body {
      margin: 0;
      min-height: 100vh;
      background: #f5f5f5; /* ✅ Light background */
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* ✅ NAVIGATION BAR */
    .navbar {
      width: 100%;
      background: var(--brand-red);
      padding: 14px 28px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-sizing: border-box;
    }

    .nav-title {
      font-size: 20px;
      font-weight: 700;
      color: #fff;
      text-decoration: none;
    }

    .nav-links a {
      text-decoration: none;
      color: white;
      margin-left: 20px;
      font-weight: 600;
      transition: 0.2s ease;
    }

    .nav-links a:hover {
      color: #ffe9e9;
    }

    /* ✅ ABOUT CARD */
    .about-card {
      margin-top: 40px;
      width: 80%;
      max-width: 800px;
      background: #fff;
      border-radius: 14px;
      padding: 30px 40px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
      animation: fade 0.3s ease-in-out;
    }

    @keyframes fade {
      from { opacity: 0; transform: translateY(15px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .title {
      text-align: center;
      color: var(--brand-dark);
      font-weight: 700;
      font-size: 28px;
      margin-bottom: 10px;
    }

    .subtext {
      text-align: center;
      color: var(--muted);
      margin-bottom: 20px;
      font-size: 15px;
    }

    p {
      line-height: 1.7;
      color: #333;
      font-size: 16px;
      margin-bottom: 16px;
      text-align: justify;
    }

    h3 {
      color: var(--brand-dark);
      margin-top: 25px;
      margin-bottom: 10px;
    }

    ul {
      padding-left: 20px;
      color: #444;
    }

    footer {
      margin-top: 50px;
      color: var(--muted);
      padding: 16px;
      font-size: 14px;
      text-align: center;
    }
  </style>
</head>

<body>

  <!-- ✅ NAV BAR -->
  <div class="navbar">
    <a class="nav-title" href="#">MY BUS</a>
    <div class="nav-links">
     
      <a href="loginpage.jsp">Login</a>
      <a href="registerPage.jsp">Register</a>
    </div>
  </div>

  <!-- ✅ ABOUT CONTENT -->
  <div class="about-card">
    <h2 class="title">About MY BUS</h2>
    <p class="subtext">Your trusted travel partner</p>

    <p>
      <strong>MY BUS</strong> is an online bus ticket booking system that allows users 
      to easily search, book, and manage bus tickets from anywhere, anytime. 
      Our goal is to make traveling simpler, faster, and more convenient 
      through an easy-to-use platform.
    </p>

    <h3>Our Mission</h3>
    <p>
      To provide a smooth and transparent online bus booking experience 
      by connecting travelers with reliable bus operators and ensuring 
      safe, comfortable, and affordable journeys.
    </p>

    <h3>Key Features</h3>
    <ul>
      <li>🚌 Real-time seat availability and booking</li>
      <li>💳 Secure online payments</li>
      <li>📱 Mobile-friendly user experience</li>
      <li>🎟️ Easy ticket cancellation and refunds</li>
      <li>📞 24/7 customer support</li>
    </ul>

    <h3>Our Vision</h3>
    <p>
      To become the most preferred and reliable bus booking platform in India, 
      offering seamless travel experiences for passengers across the country.
    </p>
  </div>

   

</body>
</html>
