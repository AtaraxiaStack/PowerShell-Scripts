Add-Type -AssemblyName PresentationFramework

# ====== CUSTOMISE THESE ======

$Title = "Castle"
$Message = "THIS CASTLE IS IN UNACCEPTABLE CONDITION."
$ButtonText = "UNACCEPTABLE"

# ==============================

[System.Windows.MessageBox]::Show(
    $Message,
    $Title,
    [System.Windows.MessageBoxButton]::OK,
    [System.Windows.MessageBoxImage]::Information
)