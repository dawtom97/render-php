<?php


$mode = getenv("APP_MODE");
$key = getenv("API_KEY");

if ($mode == "prod") {
    echo "Wersja produkcyjna";
} 
else {
    echo "Wersja developerska";
}

