//
//  MainLogic.swift
//  homework1
//
//  Created by spezza on 09.12.2020.
//
import Foundation
import SwiftUI

struct MainLogic: View {
    var funcArr = ["N-digit π", "Fibonachi Sequence", "N-digit Factorial"]
    @State var entryValue = ""
    @State var funcIndex = 0
    @State var calcResult = ""
    func calcFunc (_ idx: Int, _ etr: String) {
        var tmp = ""
        let entry = Int(etr)
        if idx == 0 {
            tmp = findNPi(entry ?? 1)
        } else if idx == 1 {
            for d in fibboFunc(entry ?? 1) {
                tmp = tmp + " \(d)"
            }
        } else if idx == 2 {
            tmp = impFact(entry ?? 1)
        }
        calcResult = tmp
    }
    var body: some View {
        ZStack {
            VStack {
                ForEach(0..<funcArr.count) { i in
                    Text(self.funcArr[i])
                        .frame(width: 250, height: 35)
                        .foregroundColor(Color(funcIndex == i ? .white : .black))
                        .background(Color(funcIndex == i ? .blue : .white))
                        .onTapGesture {
                            self.funcIndex = i
                        }
                        .padding(.top, 1)
                        .padding(.bottom, 1)
                }
                TextField("Enter entry value", text: $entryValue)
                    .multilineTextAlignment(.center)
                    .frame(width: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                Button(action: {
                    calcFunc(funcIndex, entryValue)
                    self.entryValue = ""
                }, label: {
                    Text("Calculate it!")
                        .bold()
                })
                .foregroundColor(.white)
                .frame(width: 200, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color(.blue))
                Text(calcResult)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

struct MainLogic_Previews: PreviewProvider {
    static var previews: some View {
        MainLogic()
    }
}

func fibboFunc(_ n: Int) -> Array<Int> {
    var arr: [Int] = [0 , 1]
    if n <= 2 {
        return .init(arr[0..<n])
    }

    for i in 2..<n {
        arr.append(arr[i - 2] + arr[i - 1])
    }
    return arr
}

func findNPi (_ val: Int) -> String {
    let numberOfPlaces: Double = Double(val)
    let multiplier = pow(10.0, numberOfPlaces)
    let res = val == 0 ? 0 : round(Double.pi * multiplier) / multiplier
    return String(res)
}

func impFact (_ fact: Int) -> String {
    var factorial: Int = 1
    for n in 1...fact {
        factorial = factorial * n
    }
    return String(factorial)
}

