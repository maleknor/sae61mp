<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil</title>
</head>
<body>
    <?php
    $heure = date('H');
    $salutation = '';
    if ($heure < 12) {
        $salutation = 'Bonjour';
    } elseif ($heure < 18) {
        $salutation = 'Bon après-midi';
    } else {
        $salutation = 'Bonsoir';
    }
    echo "<p>$salutation, il est actuellement " . date('H:i') . ".</p>";
    ?>
</body>
</html>

