//
//  ContentView.swift
//  00757131
//
//  Created by User11 on 2020/9/30.
//

import SwiftUI
struct Leaf: Shape {
func path(in rect: CGRect) -> Path {
Path { (path) in
path.move(to: CGPoint(x: rect.width, y: 0))
path.addQuadCurve(to: CGPoint(x: 0, y: rect.height),
control: CGPoint(x: rect.width / 5, y: rect.height / 5))
path.addQuadCurve(to: CGPoint(x: rect.width, y: 0),
control: CGPoint(x: rect.width * 17 / 20, y: rect.height * 13 /
15))
path.closeSubpath()
}
}
}

struct ContentView: View {
    var body: some View {
        ZStack{
            mushroom().scaleEffect(0.3).offset(x:-90,y:-257)
            mushroom().scaleEffect(0.3).offset(x:150,y:125)
            block().offset(x:0,y:372)
            block().offset(x:101,y:372)
            block().offset(x:202,y:372)
            question_box().offset(x:0,y:-10)
            Text("Mario Bros").font(.title).fontWeight(.heavy).foregroundColor(Color.pink).offset(x:0,y:280)
        }.background(Image("mario").resizable().scaledToFill().frame(minWidth:0,maxWidth: .infinity).edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
struct mushroom: View {
    var body: some View {
        Group{
            Path{ (path)in
                path.addEllipse(in: CGRect(x:38,y:121,width:300,height:260))
            }.fill(Color.red)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:42,y:200,width:35,height:100))
            }.fill(Color.white)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:300,y:200,width:35,height:100))
            }.fill(Color.white)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:125,y:140,width:120,height:105))
            }.fill(Color.white)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:75 ,y:270,width:220,height:130))
            }.fill(Color(red: 0.983, green: 0.876, blue: 0.762))
            Path{ (path)in
                path.addEllipse(in: CGRect(x:140,y:280,width:20,height:60))
            }.fill(Color.black)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:200,y:280,width:20,height:60))
            }.fill(Color.black)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:146,y:285,width:8,height:20))
            }.fill(Color.white)
            Path{ (path)in
                path.addEllipse(in: CGRect(x:207,y:285,width:8,height:20))
            }.fill(Color.white)
        }
    }
}

struct block: View {
    var body: some View {
        ZStack{
            Group{
                Path{(path) in
                    path.addRect(CGRect(x:50,y:100,width:100,height:100))
                }.fill(Color(red: 0.451, green: 0.212, blue: 0.005))
                Path{(path) in
                    path.addRect(CGRect(x:50,y:100,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:105,y:100,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:50,y:137.5,width:15,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:77.5,y:137.5,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:135,y:137.5,width:15,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:50,y:175,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                Path{(path) in
                    path.addRect(CGRect(x:105,y:175,width:45,height:25))
                }.fill(Color(red: 0.629, green: 0.338, blue: 0.149))
                
            }}
    }
}

struct question_box: View {
    var body: some View {
        ZStack{
            Path{(path)in
                path.addRect(CGRect(x:50,y:100,width:100,height:100))
            }.fill(Color(red: 0.934, green: 0.758, blue: 0.125))
            Path{(path)in
                path.addEllipse(in: CGRect(x:52,y:102,width:10,height:10))
            }.fill(Color(red: 0.946, green: 0.507, blue: 0.022))
            Path{(path)in
                path.addEllipse(in: CGRect(x:138,y:102,width:10,height:10))
            }.fill(Color(red: 0.946, green: 0.507, blue: 0.022))
            Path{(path)in
                path.addEllipse(in: CGRect(x:52,y:188,width:10,height:10))
            }.fill(Color(red: 0.946, green: 0.507, blue: 0.022))
            Path{(path)in
                path.addEllipse(in: CGRect(x:138,y:188,width:10,height:10))
            }.fill(Color(red: 0.946, green: 0.507, blue: 0.022))
            mark()
            Path{(path)in
                path.addRect(CGRect(x:84,y:175,width:30,height:22))
            }.fill(Color(red: 0.817, green: 0.568, blue: 0.025))
            Path{(path)in
                path.addRect(CGRect(x:85,y:176,width:28,height:20))
            }.fill(Color.white)
        }
    }
}

struct mark: View {
    var body: some View {
        Path{(path)in
            path.move(to :CGPoint(x:84,y:170))
            path.addLine(to:CGPoint(x:113,y:170))
            path.addLine(to:CGPoint(x:114,y:168))
            path.addLine(to:CGPoint(x:114,y:156))
            path.addLine(to:CGPoint(x:126,y:156))
            path.addLine(to:CGPoint(x:136,y:146))
            path.addLine(to:CGPoint(x:136,y:120))
            path.addLine(to:CGPoint(x:126,y:110))
            path.addLine(to:CGPoint(x:70,y:110))
            path.addLine(to:CGPoint(x:60,y:120))
            path.addLine(to:CGPoint(x:60,y:140))
            path.addLine(to:CGPoint(x:80,y:140))
            path.addLine(to:CGPoint(x:80,y:125))
            path.addLine(to:CGPoint(x:114,y:125))
            path.addLine(to:CGPoint(x:114,y:140))
            path.addLine(to:CGPoint(x:84,y:140))
            path.addLine(to:CGPoint(x:84,y:160))
            path.addLine(to:CGPoint(x:84,y:170))
            path.closeSubpath()
        }.fill(Color.white)
    }
}
