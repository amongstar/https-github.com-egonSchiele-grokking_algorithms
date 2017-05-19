#Binary Search in Powershell / .net
#Author ITAdder (Justino Garcia)
#clear screen after every run.
clear-host

$mylist = (1,3,5,7,9);


function Search-Binary
{
    #[CmdletBinding()]
    #[Alias()]
    #[OutputType([int])]
    Param
    (
        #  numeric lists 
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        
        [int[]]$list,

        # $item will then be passed between calls as you reduce your list
        
        $item
    )

    [int] $low = 0;
    $high = $list.Length -1;

    while ($low -lt $high) {

        $mid = ($low + $high) / 2;

        $guess = $list[$mid];


        if ($guess -eq $item) {
    
            return $mid;
        }

        if ($guess -gt $item)
        {
            $high = ($mid -1);
        }

        else{

            $low = $mid + 1
        }
          return $null;      
    }
        

    }

    Search-Binary -list $mylist -item 2