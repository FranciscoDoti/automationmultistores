'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}


/*
 * Complete the 'cardinalitySort' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY nums as parameter.
 */

function cardinalitySort(nums)  {
    console.log('i am here');
    // Write your code here
    var listToReturn = nums;
        for (var i =0; i< listToReturn.length;i++){
            
            for (var j=0;j < listToReturn.length;j++){
                var auxElement = null;
                if (getCardinal(listToReturn[j])> getCardinal(listToReturn[j+1])){
                    auxElement = listToReturn[j+1];
                    listToReturn[j+1] = listToReturn[j];
                    listToReturn[j] = auxElement
                       
                }    
            }
            
        }
        return listToReturn;

}

function getCardinal(num){
    var binaryNumber = num.toString(2);
    var cantDigits1 = 0;
    for (var i  = 0; i<binaryNumber.length;i++){
        if (binaryNumber[i]== 1){
            cantDigits1++;
        }
    }
    return cantDigits1;
}
function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const numsCount = parseInt(readLine().trim(), 10);

    let nums = [];

    for (let i = 0; i < numsCount; i++) {
        const numsItem = parseInt(readLine().trim(), 10);
        nums.push(numsItem);
    }

    const result = cardinalitySort(nums);

    ws.write(result.join('\n') + '\n');

    ws.end();
}
