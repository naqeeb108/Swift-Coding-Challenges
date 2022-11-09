import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {

    if  candles.count < 1 { return 0 } // invalid input

    var count = 0
    var maxHeight = candles[0]
    
    for candle in candles {
       
        if candle > maxHeight {
            //reset new new maxHeight and count to 1 and countinue to next alteration
            count = 1
            maxHeight = candle
            continue
        }
        
        if candle == maxHeight {
            count += 1
        }
    }
    return count
}

print(birthdayCakeCandles(candles: [44, 53, 31, 27, 77, 60, 66, 77, 26, 36]))
