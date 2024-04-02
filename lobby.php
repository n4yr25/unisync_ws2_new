<style>
    body {
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        background-color: rgba(255, 255, 255, 0.8);
        /* background-image: url('images/bg.jpg'); */
    }
</style>
<?php include('includes/header.php'); ?>
<?php include('includes/sidenav.php'); ?>

<div class="content">
    <div class="card">
        <h2>Lobby</h2>
        <main id="lobby-container">
            <div id="form-container">
                <div id="form__container__header">
                    <p>👋 Create OR Join a Room</p>
                </div>

                <div id="form__content__wrapper">
                    <form id="join-form">
                        <input type="text" name="invite_link" required />
                        <input id="button" type="submit" value="Join Room" />
                    </form>
                </div>
            </div>
        </main>
    </div>

    <?php include('includes/footer.php'); ?>
</div>

<link rel="stylesheet" type="text/css" href="css/lobby.css">