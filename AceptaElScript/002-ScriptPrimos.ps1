$StartMs = (Get-Date).Second

$NUMPRIMOS = 50000

$global:listaPrimos = 2,3

function esPrimo{

    param (
        $auxPrimo
    )

    $esPrimo = 1;

    foreach ( $primo in $listaPrimos){

        $resto = $auxPrimo % $primo; 
        if ( $resto -eq 0){
            $esPrimo = 0;
            break;
        } 
        if ($primo -gt $auxPrimo/2){
            break;
        }
    }

    $global:listaPrimos += $auxPrimo;

    return $esPrimo
}

$i = 3;

while ($global:listaPrimos.Length -le $NUMPRIMOS){
    $aux = esPrimo $i
    if ( $aux -eq 1){
        Write-Host $i
    }
    $i += 2
}

$EndMs = (Get-Date).Second

Write-Host "Ha costado $($EndMs - $StartMs) segundos calcular $NUMPRIMOS primos"