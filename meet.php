<?php
    include('includes/header.php');
    include('includes/sidenav.php');
?>
<div class="content">
    <h2>Meet</h2>
    <div id="videos">
        <video class="video-player" id="user-1" autoplay playsinline></video>
        <video class="video-player" id="user-2" autoplay playsinline></video>
    </div>

    <div id="controls">

        <div class="control-container" id="camera-btn">
            <img src="icons/camera.png" />
        </div>

        <div class="control-container" id="mic-btn">
            <img src="icons/mic.png" />
        </div>

        <a href="lobby.html">
            <div class="control-container" id="leave-btn">
                <img src="icons/phone.png" />
            </div>
        </a>

    </div>
</div>
<?php
    include('includes/footer.php');
?>
