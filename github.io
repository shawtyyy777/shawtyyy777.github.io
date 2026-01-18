<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<title>Video site</title>

<style>
html, body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    background: black;
    overflow: hidden;
}

video {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

#soundBtn {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 15px 30px;
    font-size: 20px;
    cursor: pointer;
    z-index: 10;
}
</style>
</head>
<body>

<video id="bgvideo" autoplay loop muted playsinline>
    <source src="video.mp4" type="video/mp4">
    Твой браузер не поддерживает видео.
</video>

<button id="soundBtn">Включить звук</button>

<script>
const video = document.getElementById("bgvideo");
const btn = document.getElementById("soundBtn");

btn.onclick = () => {
    video.muted = false;
    video.play();
    btn.style.display = "none";
};
</script>

</body>
</html>
