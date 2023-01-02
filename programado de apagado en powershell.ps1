function 10minutos(){
    write-host "Ejecutando script de apagado en 10 minutos"
    shutdown -s -t 600
    write-host "Listo..."
}

function 30minutos(){
    write-host "Ejecutando script de apagado en 30 minutos"
    shutdown -s -t 1800
    write-host "Listo..."
}

function apagadoendosHoras(){
    write-host "Ejecutando script de apagado en dos horas..."
    shutdown -s -t 7200
    write-host "Hecho..." 
}

function apagadoenunaHora(){
    write-host "Ejecutando script de apagado en una hora..."
    shutdown -s -t 3600 
    write-host "Hecho..."
}

function canceladodeApagado(){
    write-host "Ejecutando cancelaciones de script..."
    shutdown -a
    write-host "Hecho."
}

function main(){
try{
    do{
            write-host "-----------------------------------
Script para apagar computadora: 
-----------------------------------
Elije a que hora: 
-----------------------------------
> 1. En 10 minutos...
> 2. En 30 minutos...
> 3. En una hora 1H...
> 4. En dos horas 2HS...
> 5. Cancelar Apagado automatico...
-----------------------------------"
            $user = read-host "> "
            switch($user)
            {
                {$_ -eq 1}{
                    write-host "Ejecutando el script deseado..."
                    10minutos
                    break
                }
                {$_ -eq 2}{
                    write-host "Yendo a ejecutar el script..."
                    30minutos
                    break
                }
                {$_ -eq 3}{
                    write-host "De acuerdo..."
                    apagadoenunaHora
                    break
                }
                {$_ -eq 4}{
                    write-host "Ok, ejecutando..."
                    apagadoendosHoras
                    break
                }
                {$_ -eq 5}{     
                    write-host "Cancelar apagado automatico..."
                    canceladodeApagado
                    break
                }
            }
        }until($user -eq 3 -or $user -eq 2 -or $user -eq 1){
    }
}catch{
    Write-Warning "Caracteres no validos para el programa, ingrese los correctos."
}
}

#-----------------
main