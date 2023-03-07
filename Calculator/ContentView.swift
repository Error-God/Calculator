//
//  ContentView.swift
//  Calculator
//
//  Created by Govinda Kumar on 06/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var val: String = ""
    @State var result: Float = 0.0
    @State var flagForSign: Bool = false
    @State var sign: String = ""
    
    func getResults(){
        if self.flagForSign {
            var numbers = self.val.split(separator: self.sign)
            var first = Double(numbers[0])
            var second = Double(numbers[1])
            
            switch self.sign {
            case "/":
                self.val = String(Double(first ?? 1) / Double(second ?? 1))
            case "x":
                self.val = String(Double(first ?? 1) * Double(second ?? 1))
            case "-":
                self.val = String(Double(first ?? 0) - Double(second ?? 0))
            case "+":
                self.val = String(Double(first ?? 0) + Double(second ?? 0))
            default:
                print("Inavlid")
            }
        }
    }
    
    var body: some View {
        VStack {
            
            TextField("", text: $val)
                .background(Color(.white))
                .font(Font.system(size: 40))
                .foregroundColor(.black)
                .frame(height: 50)
                .border(.blue)
                .multilineTextAlignment(.trailing)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 15))
                .cornerRadius(10)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack{
                Button("7") {
                    self.val += "7"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                .font(Font.system(size: 30))
                
                Button("8") {
                    self.val += "8"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Button("9") {
                    self.val += "9"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Spacer().frame(width: 25)
                
                Button("/") {
                    if self.flagForSign {
                        self.sign = "/"
                        getResults()
                        self.flagForSign = false
                        
                    } else {
                        self.val += "/"
                        self.sign = "/"
                        self.flagForSign = true
                    }
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(4)
                .bold()
                
            }

            
            HStack{
                Button("4") {
                    self.val += "4"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Button("5") {
                    self.val += "5"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Button("6") {
                    self.val += "6"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Spacer().frame(width: 25)
                
                Button("x") {
                    if self.flagForSign {
                        self.sign = "x"
                        getResults()
                        self.flagForSign = false
                        
                    } else {
                        self.val += "x"
                        self.sign = "x"
                        self.flagForSign = true
                    }
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(4)
                .bold()
                
            }
            
            
            HStack{
                Button("1") {
                    self.val += "1"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Button("2") {
                    self.val += "2"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Button("3") {
                    self.val += "3"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Spacer().frame(width: 25)
                
                Button("-") {
                    if self.flagForSign {
                        self.sign = "-"
                        getResults()
                        self.flagForSign = false
                        
                    } else {
                        self.val += "-"
                        self.sign = "-"
                        self.flagForSign = true
                    }
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(4)
                .bold()
                
            }

            
            HStack{
                Button("C") {
                    self.val = ""
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Button("0") {
                    self.val += "0"
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Button("=") {
                    getResults()
                    self.flagForSign = false
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(8)
                
                Spacer().frame(width: 25)
                
                Button("+") {
                    if self.flagForSign {
                        self.sign = "+"
                        getResults()
                        self.flagForSign = false
                        
                    } else {
                        self.val += "+"
                        self.sign = "+"
                        self.flagForSign = true
                    }
                }
                .foregroundColor(Color(.white))
                .frame(width: 50,height: 50)
                .font(Font.system(size: 30))
                .border(.blue)
                .background(Color(.systemBlue))
                .cornerRadius(4)
                .bold()
                
            }

        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
