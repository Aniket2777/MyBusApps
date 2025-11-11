<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login | MY BUS</title>

  <style>
    :root {
      --brand-red: #e53935;
      --brand-dark: #b71c1c;
      --muted: #cfcfcf;
      font-family: Inter, system-ui, sans-serif;
    }

    body {
      margin: 0;
      min-height: 100vh;
      background: #000;
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

    /* ✅ NAV LINKS AS BUTTONS */
    .nav-links {
      display: flex;
      gap: 12px;
    }

    .nav-links a {
      text-decoration: none;
      background: #fff;
      color: var(--brand-red);
      font-weight: 600;
      padding: 8px 16px;
      border-radius: 8px;
      transition: 0.3s ease;
      border: 2px solid transparent;
    }

    .nav-links a:hover {
      background: transparent;
      color: #fff;
      border-color: #fff;
    }

    /* ✅ LOGIN BOX */
    .login-card {
      margin-top: 40px;
      width: 360px;
      background: #fff;
      border-radius: 14px;
      padding: 28px;
      box-shadow: 0 8px 30px rgba(255, 255, 255, 0.15);
      animation: fade 0.2s ease-in-out;
    }

    @keyframes fade {
      from {
        opacity: 0;
        transform: translateY(15px);
      }

      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .title {
      text-align: center;
      color: var(--brand-dark);
      font-weight: 700;
    }

    .field {
      margin-bottom: 14px;
      display: flex;
      flex-direction: column;
    }

    label {
      font-size: 14px;
      color: #444;
      margin-bottom: 4px;
      font-weight: 600;
    }

    input {
      padding: 12px;
      border: 1px solid #ddd;
      border-radius: 8px;
      font-size: 14px;
      outline: none;
      transition: all 0.2s ease;
    }

    input:focus {
      border-color: var(--brand-red);
      box-shadow: 0 0 0 3px rgba(229, 57, 53, 0.25);
    }

    .btn {
      width: 100%;
      padding: 12px;
      border: none;
      background: var(--brand-red);
      color: #fff;
      border-radius: 10px;
      font-size: 15px;
      font-weight: 700;
      cursor: pointer;
      transition: 0.25s ease;
      margin-top: 4px;
    }

    .btn:hover {
      background: var(--brand-dark);
    }

    .helper {
      text-align: center;
      margin-top: 10px;
      font-size: 14px;
      color: var(--muted);
    }

    .helper a {
      color: var(--brand-red);
      font-weight: 600;
      text-decoration: none;
    }

    .msg {
      background: #ffcdd2;
      border-left: 4px solid var(--brand-red);
      padding: 10px;
      margin-bottom: 12px;
      color: var(--brand-dark);
      border-radius: 6px;
      font-size: 14px;
      text-align: center;
    }
  </style>

</head>

<body>


  <!-----------------------------------------navigation bar------------ -->
  <div class="navbar">
    <a class="nav-title" href="#">MY BUS</a>
    <div class="nav-links">
      <a href="registerPage.jsp">Register</a>
      <a href="aboutPage.jsp">About</a>
    </div>
  </div>
  <!------------------------------------------------------------------- -->

  <div class="login-card">
    <h2 class="title">Login</h2>
    <p style="text-align:center;color:var(--muted)">Sign in to continue</p>

    <form action="ServletC" method="post">
      <div class="field">
        <label>User name</label>
        <input type="text" name="unsername" placeholder="Enter username" required />
      </div>

      <div class="field">
        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password" required />
      </div>

      <button class="btn" type="submit">Login</button>
    </form>

    <div class="helper">
      <a href="forgotPass.jsp">Forgot Password?</a>
    </div>

    <div class="helper">
      Don't have an account?
      <a href="registerPage.jsp">Sign up</a>
    </div>

  </div>

</body>

</html>
