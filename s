<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portofolio Digital | Mirza</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;500;800&family=Orbitron:wght@400;700&display=swap');

        :root {
            --primary: #4facfe;
            --accent: #a653ff;
            --roblox-red: #f63131;
            --discord-blue: #5865F2;
            --spotify-green: #1DB954;
            --glass: rgba(255, 255, 255, 0.05);
            --border: rgba(255, 255, 255, 0.1);
        }

        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Plus Jakarta Sans', sans-serif; }
        body { background-color: #000; color: #fff; height: 100vh; overflow: hidden; }

        /* --- BACKGROUND PARTICLES --- */
        #particles-js {
            position: absolute; width: 100%; height: 100%; z-index: 1;
            background: radial-gradient(circle at 50% 50%, #0d0b21 0%, #000 100%);
        }

        .section {
            position: relative; z-index: 2; width: 100%; height: 100vh;
            display: none; padding: 40px 10%; overflow-y: auto;
        }

        /* --- ANIMASI REVEAL --- */
        .animate-reveal {
            animation: revealUp 1s cubic-bezier(0.2, 0.8, 0.2, 1) forwards;
        }

        @keyframes revealUp {
            from { opacity: 0; transform: translateY(40px) scale(0.95); filter: blur(10px); }
            to { opacity: 1; transform: translateY(0) scale(1); filter: blur(0); }
        }

        /* --- HALAMAN 1 (HOME) --- */
        #page1 { display: flex; align-items: center; justify-content: space-around; }
        .hero-text h1 { 
            font-size: 3.5rem; font-weight: 800;
            background: linear-gradient(90deg, #fff, var(--primary), var(--accent));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-size: 200%; animation: flow 5s linear infinite;
        }
        @keyframes flow { to { background-position: 200% center; } }

        .profile-wrapper { position: relative; }
        .profile-img { 
            width: 300px; height: 300px; border-radius: 50%; 
            border: 2px solid var(--border); padding: 10px;
            animation: float 6s infinite ease-in-out;
            box-shadow: 0 0 50px rgba(79, 172, 254, 0.2);
        }
        .emblem-online {
            position: absolute; bottom: 30px; right: 30px;
            background: #00ff88; color: #000; padding: 5px 15px;
            border-radius: 20px; font-weight: bold; font-size: 0.7rem;
            box-shadow: 0 0 20px #00ff88; animation: pulse 2s infinite;
        }

        /* --- HALAMAN 2 (GRID 8 KOTAK) --- */
        .grid-8 { 
            display: grid; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); 
            gap: 20px; margin-top: 40px; 
        }
        .card {
            background: var(--glass); backdrop-filter: blur(10px); border: 1px solid var(--border);
            padding: 30px; border-radius: 24px; cursor: pointer; text-align: center;
            transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            opacity: 0;
        }
        .card:hover { transform: translateY(-10px); border-color: var(--primary); background: rgba(255,255,255,0.1); }
        .card i { font-size: 2.5rem; color: var(--primary); margin-bottom: 15px; transition: 0.3s; }

        /* Style Logo Glow */
        .card img.logo-icon { width: 50px; height: 50px; margin-bottom: 15px; transition: 0.4s; }
        .card:hover img.logo-icon.roblox-glow { filter: drop-shadow(0 0 15px var(--roblox-red)); transform: scale(1.1); }
        .card:hover i.discord-glow { filter: drop-shadow(0 0 15px var(--discord-blue)); transform: scale(1.1); }
        .card:hover i.spotify-glow { filter: drop-shadow(0 0 15px var(--spotify-green)); transform: scale(1.1); }

        /* --- CONTAINER INFO --- */
        .info-container {
            background: var(--glass); border: 1px solid var(--border);
            padding: 40px; border-radius: 30px; width: 100%; max-width: 900px;
            backdrop-filter: blur(20px); position: relative; margin: auto;
        }
        .badge {
            padding: 5px 15px; border-radius: 50px; font-family: 'Orbitron'; 
            font-size: 0.7rem; margin-bottom: 20px; display: inline-block;
        }
        .badge-roblox { background: var(--roblox-red); box-shadow: 0 0 15px var(--roblox-red); }
        .badge-discord { background: var(--discord-blue); box-shadow: 0 0 15px var(--discord-blue); }
        .badge-spotify { background: var(--spotify-green); box-shadow: 0 0 15px var(--spotify-green); }

        /* CAROUSEL */
        .carousel { width: 100%; overflow: hidden; margin-top: 30px; position: relative; padding: 10px 0; }
        .track { display: flex; width: calc(240px * 10); animation: scroll 20s linear infinite; }
        .item-card {
            width: 220px; height: 140px; margin-right: 20px; border-radius: 20px; 
            overflow: hidden; border: 2px solid var(--border); flex-shrink: 0; position: relative;
        }
        .item-card img { width: 100%; height: 100%; object-fit: cover; filter: brightness(0.7); transition: 0.3s; }
        .item-card:hover img { filter: brightness(1); transform: scale(1.1); }
        .item-name {
            position: absolute; bottom: 0; left: 0; width: 100%; padding: 10px;
            background: linear-gradient(transparent, rgba(0,0,0,0.9)); font-size: 0.8rem; font-weight: bold; text-align: center;
        }

        @keyframes scroll { 0% { transform: translateX(0); } 100% { transform: translateX(calc(-240px * 5)); } }

        /* --- BUTTONS --- */
        .btn-style {
            padding: 12px 35px; background: #fff; color: #000; border: none;
            border-radius: 50px; font-weight: bold; cursor: pointer; transition: 0.3s;
        }
        .btn-back { background: transparent; color: #fff; border: 1px solid #fff; margin-top: 30px; }
        .btn-back:hover { background: #fff; color: #000; }

        @keyframes float { 0%, 100% { transform: translateY(0); } 50% { transform: translateY(-20px); } }
        @keyframes pulse { 0%, 100% { opacity: 1; } 50% { opacity: 0.5; } }

        @media (max-width: 768px) { #page1 { flex-direction: column-reverse; text-align: center; } .profile-img { width: 200px; height: 200px; } }
    </style>
</head>
<body>

    <div id="particles-js"></div>

    <section class="section animate-reveal" id="page1" style="display: flex;">
        <div class="hero-text">
            <div class="social-icons" style="display: flex; gap: 15px; margin-bottom: 20px; font-size: 1.5rem;">
                <i class="fa-brands fa-spotify"></i><i class="fa-brands fa-discord"></i><i class="fa-brands fa-github"></i>
            </div>
            <h1>Halo, saya Mirza</h1>
            <p style="color: #888; margin-bottom: 30px;">Siswa SMP yang sedang mencoba membuat portofolio melalui AI.<br>Kreativitas tanpa batas dimulai dari sini.</p>
            <button class="btn-style" onclick="showPage('page2')">Click Buat Lanjut</button>
        </div>
        <div class="profile-wrapper">
            <img src="https://files.catbox.moe/1twm5e.png" class="profile-img">
            <div class="emblem-online">ONLINE</div>
        </div>
    </section>

    <section class="section" id="page2">
        <h2 style="text-align: center; font-size: 2.5rem; margin-bottom: 40px;">Digital Universe</h2>
        <div class="grid-8">
            <div class="card" onclick="showPage('page-roblox')">
                <img src="https://files.catbox.moe/oxtl8x.png" class="logo-icon roblox-glow">
                <h3>Roblox</h3>
            </div>
            <div class="card" onclick="showPage('page-discord')">
                <i class="fa-brands fa-discord discord-glow" style="color: var(--discord-blue); font-size: 3rem; margin-bottom: 15px;"></i>
                <h3>Discord</h3>
            </div>
            <div class="card" onclick="showPage('page-spotify')">
                <i class="fa-brands fa-spotify spotify-glow" style="color: var(--spotify-green); font-size: 3rem; margin-bottom: 15px;"></i>
                <h3>Spotify</h3>
            </div>
            <div class="card"><i class="fa-solid fa-comment"></i><h3>Social</h3></div>
            <div class="card"><i class="fa-solid fa-code"></i><h3>Coding</h3></div>
            <div class="card"><i class="fa-solid fa-gamepad"></i><h3>Gaming</h3></div>
            <div class="card"><i class="fa-solid fa-rocket"></i><h3>Vision</h3></div>
            <div class="card"><i class="fa-solid fa-graduation-cap"></i><h3>School</h3></div>
        </div>
        <center><p onclick="showPage('page1')" style="margin-top: 40px; cursor: pointer; color: #555; text-decoration: underline;">← Kembali ke Home</p></center>
    </section>

    <section class="section" id="page-roblox">
        <div class="info-container animate-reveal" style="display: block;">
            <div class="badge badge-roblox">VETERAN PLAYER</div>
            <h1 style="font-family: 'Orbitron'; margin-bottom: 20px;">Informasi Roblox</h1>
            <div style="text-align: left; line-height: 2;">
                <p><strong>Username:</strong> Mirza0504</p>
                <p><strong>Main Sejak:</strong> 2017</p>
                <p><strong>Link Profile:</strong> <a href="https://www.roblox.com/users/359288173/profile" target="_blank" style="color:var(--primary); text-decoration: none; border-bottom: 1px solid;">Visit Profile</a></p>
            </div>
            <h3 style="margin-top: 40px; text-align: left; color: var(--roblox-red); font-family: 'Orbitron';">🎮 Game Favorit</h3>
            <div class="carousel">
                <div class="track">
                    <div class="item-card"><img src="https://files.catbox.moe/eq6zn9.jpg"><div class="item-name">CDID</div></div>
                    <div class="item-card"><img src="https://files.catbox.moe/9adha6.webp"><div class="item-name">Fish It</div></div>
                    <div class="item-card"><img src="https://files.catbox.moe/no5jpu.webp"><div class="item-name">Akademi Militer</div></div>
                    <div class="item-card"><img src="https://files.catbox.moe/435346.webp"><div class="item-name">Ophelia</div></div>
                    <div class="item-card"><img src="https://files.catbox.moe/dua4we.webp"><div class="item-name">Expedition Antarctica</div></div>
                    <div class="item-card"><img src="https://files.catbox.moe/eq6zn9.jpg"><div class="item-name">CDID</div></div>
                    <div class="item-card"><img src="https://files.catbox.moe/9adha6.webp"><div class="item-name">Fish It</div></div>
                </div>
            </div>
            <button class="btn-style btn-back" onclick="showPage('page2')">Kembali ke Menu</button>
        </div>
    </section>

    <section class="section" id="page-discord">
        <div class="info-container animate-reveal" style="display: block;">
            <div class="badge badge-discord">ACTIVE USER</div>
            <h1 style="font-family: 'Orbitron'; margin-bottom: 20px;">Informasi Discord</h1>
            <div style="text-align: left; line-height: 1.8;">
                <p><strong>Username:</strong> marzi64</p>
                <p><strong>Main Discord Sejak:</strong> 2021</p>
                <p style="margin-top: 20px; color: #bbb;">
                    Discord adalah tempat utama saya berkomunikasi, bermain RP Roblox, dan mencari teman baru. 
                    Saya jauh lebih aktif di Discord dibandingkan platform lain seperti WhatsApp atau Instagram.
                </p>
            </div>
            <button class="btn-style btn-back" onclick="showPage('page2')">Kembali ke Menu</button>
        </div>
    </section>

    <section class="section" id="page-spotify">
        <div class="info-container animate-reveal" style="display: block;">
            <div class="badge badge-spotify">MUSIC LOVER</div>
            <h1 style="font-family: 'Orbitron'; margin-bottom: 20px;">Spotify Vibes</h1>
            <div style="text-align: left; line-height: 1.8;">
                <p><strong>Genre Favorit:</strong> Lagu Santai</p>
                <p><strong>Kebiasaan:</strong> Saya biasanya mendengarkan musik ketika sedang asyik bermain game ataupun di saat merasa bosan.</p>

                <div style="background: rgba(29, 185, 84, 0.1); border-left: 4px solid var(--spotify-green); padding: 15px; border-radius: 10px; margin-top: 20px;">
                    <p style="font-style: italic; color: #eee; text-align: center;">"Music is the fuel for my digital creativity."</p>
                </div>
            </div>
            <button class="btn-style btn-back" onclick="showPage('page2')">Kembali ke Menu</button>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
    <script>
        particlesJS('particles-js', {
            "particles": {
                "number": { "value": 100 },
                "color": { "value": "#4facfe" },
                "opacity": { "value": 0.4 },
                "size": { "value": 3, "random": true },
                "line_linked": { "enable": true, "distance": 150, "color": "#4facfe", "opacity": 0.2 },
                "move": { "enable": true, "speed": 3, "out_mode": "out" }
            }
        });

        function showPage(id) {
            document.querySelectorAll('.section').forEach(s => s.style.display = 'none');
            const target = document.getElementById(id);
            target.style.display = (id === 'page2') ? 'block' : 'flex';
            if(id === 'page2') {
                const cards = document.querySelectorAll('.card');
                cards.forEach((c, i) => {
                    c.style.animation = `revealUp 0.6s cubic-bezier(0.2, 0.8, 0.2, 1) forwards ${i * 0.1}s`;
                });
            }
        }
    </script>
</body>
</html>
