
$dt=get-date -format ddMMyyhhmmss
$File = 'C:\temp\sk'
$str1 = $file+$dt+'.bmp'

Add-Type -AssemblyName System.Windows.Forms
Add-type -AssemblyName System.Drawing

# Gather Screen resolution information
#$Screen = [System.Windows.Forms.SystemInformation]::VirtualScreen

# Create bitmap using the top-left and bottom-right bounds
$bitmap = New-Object System.Drawing.Bitmap (1920, 1080)


# Create Graphics object
$graphic = [System.Drawing.Graphics]::fromImage($bitmap)


# Capture screen
$graphic.CopyFromScreen($Screen.Left, $Screen.Top, 0, 0, $bitmap.Size)

# Save to file
$bitmap.Save($str1)
#Write-Output "Screenshot saved to:"
#Write-Output $File
