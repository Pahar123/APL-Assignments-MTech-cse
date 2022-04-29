@arr;
$i = 0;
print ( "\nInitial array size is :", $size=1, "\n\n" );
while ($i != -999){
    print("Enter a number: \n");
    $i = <STDIN>;
    if ($i != -999){
        push @arr, $i;
        if ($size == @arr){
            print("\nArray is full!\n");  
            $size = 2*$i;
            print("Array size is doubled $size \n\n");
        }
    }
}
if ($i = "-999"){
    print "Quit...\n";
}
print ("The array contains...\n", @arr);





