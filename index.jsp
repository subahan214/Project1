<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sultann Project</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Full-page bright background with subtle glow animation */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow-x: hidden;
            position: relative;
        }

        /* Background container with animation */
        .background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('images/madina-sharif.jpg') no-repeat center center;
            background-size: cover;
            z-index: 0;
            animation: glowBackground 6s ease-in-out infinite alternate;
        }

        @keyframes glowBackground {
            0% {
                filter: brightness(1) contrast(1);
            }
            50% {
                filter: brightness(1.2) contrast(1.1);
            }
            100% {
                filter: brightness(1) contrast(1);
            }
        }

        /* Overlay for content */
        .overlay {
            position: relative;
            z-index: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 50px 20px;
        }

        /* Ahlulbayt container */
        .ahlulbayt-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
            position: relative;
        }

        .ahlulbayt {
            background-color: rgba(255, 255, 255, 0.15); /* transparent card */
            border-radius: 15px;
            padding: 15px;
            width: 250px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.4);
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
        }

        /* Hover glow effect on cards */
        .ahlulbayt:hover {
            transform: translateY(-8px) scale(1.05);
            box-shadow: 0 15px 40px rgba(255, 235, 59, 0.8);
            background-color: rgba(255, 255, 255, 0.25);
        }

        .ahlulbayt img {
            width: 100%;
            border-radius: 15px;
            margin-bottom: 10px;
        }

        /* Name with glowing highlight */
        .name {
            font-weight: bold;
            font-size: 22px;
            color: #fff;
            text-shadow: 0 0 5px #ffeb3b, 0 0 10px #ffeb3b, 0 0 15px #ffc107;
            animation: glowPulse 2s infinite alternate;
            margin-bottom: 5px;
        }

        @keyframes glowPulse {
            0% {
                text-shadow: 0 0 5px #ffeb3b, 0 0 10px #ffeb3b, 0 0 15px #ffc107, 0 0 20px #ff9800;
            }
            50% {
                text-shadow: 0 0 8px #ffeb3b, 0 0 16px #ffeb3b, 0 0 24px #ffc107, 0 0 32px #ff9800;
            }
            100% {
                text-shadow: 0 0 5px #ffeb3b, 0 0 10px #ffeb3b, 0 0 15px #ffc107, 0 0 20px #ff9800;
            }
        }

        .nath {
            font-style: italic;
            color: #fff;
            text-shadow: 1px 1px 3px #000;
        }

        @media(max-width: 800px){
            .ahlulbayt-container {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>
    <!-- Animated background -->
    <div class="background"></div>

    <!-- Content overlay -->
    <div class="overlay">
        <div class="ahlulbayt-container">
            <div class="ahlulbayt">
                <img src="images/ahlulbayt1.jpg" alt="Ahlulbayt 1">
                <p class="name">Moula Ali</p>
                <p class="nath">"Quote / Nath here"</p>
            </div>
            <div class="ahlulbayt">
                <img src="images/ahlulbayt2_name.jpg" alt="Ahlulbayt 2">
                <p class="name">Imam Hassan</p>
                <p class="nath">"Quote / Nath here"</p>
            </div>
            <div class="ahlulbayt">
                <img src="images/ahlulbayt3_name.jpg" alt="Ahlulbayt 3">
                <p class="name">Imam Hussain</p>
                <p class="nath">"Quote / Nath here"</p>
            </div>
        </div>
    </div>
</body>
</html>
