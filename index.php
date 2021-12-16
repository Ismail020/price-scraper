<?php 

include_once ('include.php');
include_once('conn.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js" integrity="sha512-GMGzUEevhWh8Tc/njS0bDpwgxdCJLQBWG3Z2Ct+JGOpVnEmjvNx6ts4v6A2XJf1HOrtOsfhv3hBKpK9kE5z8AQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="script.js">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <table class="table">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Mediamarkt</th>
                <th scope="col">Amac</th>
                <th scope="col">BBC</th>
                <th scope="col">YourMacStore 512GB!</th>
                <th scope="col">Bol</th>
                <th scope="col">Alternate</th>
                <th scope="col">Wehkamp</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <th scope="row">Macbook Air 8GB 256GB</th>
                <td><a href="https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html"><?php echo $mbmm[0]; ?></a></td>
                <td><a href="https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020"><?php echo $mbamac[0]; ?></a></td>
                <td><a href="https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183"><?php echo $mbbbc[0]; ?></a></td>
                <td><a href="https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb"><?php echo $mbyms[0]; ?></a></td>
                <td><a href="https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle"><?php echo $mbbol[0]; ?></a></td>
                <td><a href="https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405"><?php echo $mbalt[0]; ?></a></td>
                <td><a href="https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/"><?php echo $mbweh[0]; ?></a></td>
                </tr>
            </tbody>
            </table>
            <div class="col-6">
                <button type="button" class="btn btn-outline-dark"><a href="update.php">Update prijzen</a></button>
            </div>
        </div>
        <div class="container">
            <canvas id="myChart"></canvas>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col">
                    <?php 
                    $min = "SELECT *
                    FROM macbook_air
                    WHERE prijs =  ( SELECT MIN(prijs) FROM macbook_air )
                    GROUP BY prijs
                    ";
                        $prijs = $conn->query($min);
                        foreach ($prijs as $row) {
                            echo 'De Macbook Air 8GB 256Gb is het goedkoopst bij ' . $row['winkel'] . ' voor ' . $row['prijs'] . ' ! <br>';
                            echo '<a target = "_blank" href="' . $row['link'] . '">Bezoek de site!</a>';
                        }
                    ?>
                </div>
            </div>
        </div>


        <script>
            var xmlhttp = new XMLHttpRequest();
            var url = "http://localhost/macbook/mmfile.json";
            xmlhttp.open("GET", url, true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function(){
                if (this.readyState ==  4 && this.status == 200) {
                    var data = JSON.parse(this.responseText);
                    var filteredmm = data.filter(a => a.winkel == "Mediamarkt");
                    var filteredamac = data.filter(a => a.winkel == "Amac");
                    var filteredbbc = data.filter(a => a.winkel == "BBC");
                    var filteredyms = data.filter(a => a.winkel == "YourMacStore");
                    var filteredbol = data.filter(a => a.winkel == "Bol");
                    var filteredalt = data.filter(a => a.winkel == "Alternate");
                    var filteredweh = data.filter(a => a.winkel == "Wehkamp");

                    var dagen = filteredmm.map(function(elem) {
                        return elem.datum;
                    });

                    var prijsmm = filteredmm.map(function(elem) {
                        return elem.prijs;
                    });

                    var prijsamac = filteredamac.map(function(elem) {
                        return elem.prijs;
                    });

                    var prijsbbc = filteredbbc.map(function(elem) {
                        return elem.prijs;
                    });

                    var prijsyms = filteredyms.map(function(elem) {
                        return elem.prijs;
                    });

                    var prijsbol = filteredbol.map(function(elem) {
                        return elem.prijs;
                    });

                    var prijsalt = filteredalt.map(function(elem) {
                        return elem.prijs;
                    });

                    var prijsweh = filteredweh.map(function(elem) {
                        return elem.prijs;
                    });

                    const ctx = document.getElementById('myChart').getContext('2d');
                    const myChart = new Chart(ctx, {
                        type: 'line',
                        data: {
                            labels: dagen,
                            datasets: [{
                                label: 'Mediamarkt',
                                data: prijsmm,
                                backgroundColor: 'transparent',
                                borderColor: '#34568B',
                                borderWidth: 4
                            }, {
                                label: 'Amac',
                                data: prijsamac,
                                backgroundColor: 'transparent',
                                borderColor: '#009B77',
                                borderWidth: 4
                            }, {
                                label: 'BBC',
                                data: prijsbbc,
                                backgroundColor: 'transparent',
                                borderColor: '#D65076',
                                borderWidth: 4
                            }, {
                                label: 'YourMacStore',
                                data: prijsyms,
                                backgroundColor: 'transparent',
                                borderColor: '#EFC050',
                                borderWidth: 4
                            }, {
                                label: 'Bol',
                                data: prijsbol,
                                backgroundColor: 'transparent',
                                borderColor: '#55B4B0',
                                borderWidth: 4
                            }, {
                                label: 'Alternate',
                                data: prijsalt,
                                backgroundColor: 'transparent',
                                borderColor: '#BC243C',
                                borderWidth: 4
                            }, {
                                label: 'Wehkamp',
                                data: prijsweh,
                                backgroundColor: 'transparent',
                                borderColor: '#926AA6',
                                borderWidth: 4
                            }]
                        },
                        options: {
                            elements:{
                                line:{
                                    tension:0
                                }
                            },
                            scales: {
                                yAxes: {
                                    beginAtZero: false,
                                    labelString: 'test'
                                }
                            }
                        }
                    });
                }
            }
        </script>
    </div>
</body>
</html>
