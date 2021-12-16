<?php
    include_once('include.php');
    include_once('conn.php');

    // prijzen worden goed gezet
    preg_match('/\d+/', $mbmm[0], $mm);
    preg_match('/\d+/', $mbamacdb[0], $amac);
    preg_match('/\d+/', $mbbbc[0], $bbc);
    preg_match_all('!\d\.\d+!', $mbyms[0], $yms);
    $ymsdot = preg_replace('/\./', '', $yms[0][0]);
    preg_match('/\d+/', $mbbol[0], $bol);
    preg_match_all('!\d\.\d+!', $mbalt[0], $alt);
    $altdot = preg_replace('/\./', '', $alt[0][0]);
    preg_match('/\d+/', $mbweh[0], $weh);



    // prijzen worden in db gegooid
    $sqlmm = "INSERT INTO macbook_air (winkel, prijs, link)
    VALUES ('Mediamarkt', $mm[0], 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html')";
    $conn->exec($sqlmm);
    $sqlamac = "INSERT INTO macbook_air (winkel, prijs, link)
    VALUES ('Amac', $amac[0], 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020')";
    $conn->exec($sqlamac);
    $sqlbbc = "INSERT INTO macbook_air (winkel, prijs, link)
    VALUES ('BBC', $bbc[0], 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183')";
    $conn->exec($sqlbbc);
    $sqlyms = "INSERT INTO macbook_air (winkel, prijs, link)
    VALUES ('YourMacStore', $ymsdot, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb')";
    $conn->exec($sqlyms);
    $sqlbol = "INSERT INTO macbook_air (winkel, prijs, link)
    VALUES ('Bol', $bol[0], 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle')";
    $conn->exec($sqlbol);
    $sqlalt = "INSERT INTO macbook_air (winkel, prijs, link)
    VALUES ('Alternate', $altdot, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405')";
    $conn->exec($sqlalt);
    $sqlweh = "INSERT INTO macbook_air (winkel, prijs, link)
    VALUES ('Wehkamp', $weh[0], 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/')";
    $conn->exec($sqlweh);

    // DB WORDT NAAR JSON FILE GETOVERD
    $sql = "SELECT * FROM macbook_air";
    $result = $conn->query($sql);
    $json_array = array();

    while ($row = $result->fetch()) {
        $json_array[] = $row;
    }

    $json = json_encode($json_array);
    file_put_contents("mmfile.json", $json);

    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <a href="index.php">Go back!</a>
    </body>
    </html>
