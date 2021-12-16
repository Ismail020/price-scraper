<?php 

include_once ('simple_html_dom.php');
ini_set('user_agent', 'My-Application/2.5');

$htmlmm = file_get_html('https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html');
$mbmm = $htmlmm->find('div[class="price big"]');

//amac extra
$htmlamac = file_get_html('https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020');
$mbamac = $htmlamac->find('span[id="product-price-73507"]');

$htmlamacdb = file_get_html('https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020');
$mbamacdb = $htmlamacdb->find('div[data-product-price="999.0000"]');

$htmlbbc = file_get_html('https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183');
$mbbbc = $htmlbbc->find('span[class="priceblock__price priceblock__price--salesprice priceblock__price--FloatingDecimal"]');

$htmlyms = file_get_html('https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb');
$mbyms = $htmlyms->find('span[class="price"]');

$htmlbol = file_get_html('https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle');
$mbbol = $htmlbol->find('span[class="promo-price"]');

$htmlalt = file_get_html('https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405');
$mbalt = $htmlalt->find('div[class="price"]');

$htmlweh = file_get_html('https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/');
$mbweh = $htmlweh->find('span[class="position-relative color-black font-size-regular font-weight-regular"]');

