Add-Type -AssemblyName System.Windows.Forms;

echo "            __,__";
echo "   .--.  .-'     '-.  .--.";
echo "  / .. \/  .-. .-.  \/ .. \";
echo " | |  '|  /   Y   \  |'  | |";
echo " | \   \  \ 0 | 0 /  /   / |";
echo "  \ '- ,\.-'`` ``'-./, -' /";
echo "   ''-' /_   ^ ^   _\ '-''";
echo "       |  \._   _./  |";
echo "       \   \ '-' /   /";
echo "        '._ '-=-' _.'";
echo "           '-----'";
echo "";

echo "   Lazy Monke Productions   ";

Start-Sleep -Seconds 5;

echo "";

$hours = Read-Host -Prompt "Hours until the end of your workday";

$seconds = [int] $hours * 3600;

echo "Starting to cover for you not working! :)";

echo "Moving cursor and pressing F15 key every second for $seconds seconds, then shutting down system."

Start-Sleep -Seconds 8;

for ($i = 0; $i -lt $seconds; $i++) {
	Start-Sleep -Seconds 1;	cls;
	echo "$i / $seconds second(s) have passed";
  	$Pos = [System.Windows.Forms.Cursor]::Position;
	$x = (($pos.X + 1));
  	$y = (($pos.Y + 1));
  	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y);
	$PosNew = [System.Windows.Forms.Cursor]::Position;
	if ($PosNew.X -eq ($x - 1)) {
	$x = 0;
	}

	if ($PosNew.Y -eq ($y - 1)) {
		$y = 0;	
	}

	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y);

	echo "Cursor is moved to ($x,$y)";
	echo "--------------------------";

	[System.Windows.Forms.SendKeys]::SendWait("{F15}");

}

shutdown /s;
