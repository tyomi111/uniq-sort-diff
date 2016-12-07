$file1 = (cat .\test\crlf.txt) | Sort-Object -Unique
$file2 = (cat .\test\lf.txt) | Sort-Object -Unique

$date = Get-Date -Format "yyyyMMdd_HHmmss"
$result = Compare-Object $file1 $file2 -PassThru | Sort-Object  | tee log\$date.log
notepad.exe .\log\$date.log