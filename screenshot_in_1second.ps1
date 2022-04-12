$timer = new-timespan -Minutes 1
$clock = [diagnostics.stopwatch]::StartNew()
while ($clock.elapsed -lt $timer)
{
    $dt=get-date -format ddMMyyhhmmss
    $File = 'C:\temp\SS'
    $str1 = $file+$dt+'.jpg'
    
    Add-Type -AssemblyName System.Windows.Forms
    Add-type -AssemblyName System.Drawing
    
    # Create bitmap using the top-left and bottom-right bounds
    $bitmap = New-Object System.Drawing.Bitmap (1920, 1080)
        
    # Create Graphics object
    $graphic = [System.Drawing.Graphics]::fromImage($bitmap)
    
        # Capture screen
    $graphic.CopyFromScreen($Screen.Left, $Screen.Top, 0, 0, $bitmap.Size)
    
    # Save to file
    $bitmap.Save($str1)
    
start-sleep -seconds 1
}
write-host "Timer end"
