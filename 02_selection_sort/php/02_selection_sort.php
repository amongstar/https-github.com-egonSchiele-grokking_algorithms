<?php

function findSmallest(& $list) {
    $small = $list[0];
    $index = 0;
    for($i = $index, $len = count($list); $i < $len; $i++) {
        if($list[$i] < $small) {
            $small = $list[$i];
            $index = $i;
        }
    }
    return $index;
}

function selectionSort($list) {
    $sorted = [];
    for($i = 0, $len = count($list); $i < $len; $i++) {
        $index = findSmallest($list);
        $sorted[] = array_splice($list, $index, 1)[0];
    }
    return $sorted;
}

echo '[' . join(', ', selectionSort([5, 3, 6, 2, 10])) . ']' . PHP_EOL; // [2, 3, 5, 6, 10]


