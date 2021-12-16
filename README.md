# Price scraper
A scraper site to compare prices in a chart  
I included import.sql and scraper.sql so you can see how the site works with data in the database  

## Usage
#### Put the entire link of the site where the product and the price can be seen between the quotes   
```
include.php
$htmlmm = file_get_html('https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html');
```


#### Now search for the div where the price is of the product in the page source and put the class between the brackets
```
include.php
$mbmm = $htmlmm->find('div[class="price big"]'); 
```
#### The price is now in 
```
$mbmm[0]
```

#### To use the chart u need to put all the prices in your database without any special characters, so use a regex if there are any special characters in your price
```
update.php
preg_match('/\d+/', $mbmm[0], $mm);
```

#### Now create the query to push the prices to your database
```
update.php
$sqlmm = "INSERT INTO macbook_air (winkel, prijs, link)
    VALUES ('Mediamarkt', $mm[0], 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html')";
    $conn->exec($sqlmm);
```

#### The button in index.php will run the regex, the query and convert the database to json to use it in the chart
