//
//  ContentView.swift
//  WhatsAppSettingView
//
//  Created by mac on 9/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                // section photo profile
                Section(){
                    NavigationLink(destination: About()){
                        HStack(){
                            Image("profile")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment:.leading){
                                Text("Risyad Al Farizi")
                                    .font(.headline)
                                Text("IOS Developer")
                                    .font(.caption)
                            }
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        }
                    }
                }
                
                // section pengaturan umum
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination: PesanBerbintang()){
                        HStack(spacing:20){
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundStyle(Color.white)
                            
                            Text("Pesan Berbintang")
                        }
                    }
                    NavigationLink(destination: WhatsappWeb()){
                        HStack(spacing:20){
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundStyle(Color.white)
                            
                            Text("Whatsapp Web/Desktop")
                        }
                    }
                }
                
                // section pengaturan akun
                Section(header: Text("Pengaturan Akun")){
                    NavigationLink(destination: Akun()){
                        HStack(spacing:20){
                            Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundStyle(Color.white)
                            
                            Text("Akun")
                        }
                    }
                    
                    NavigationLink(destination: Percakapan()){
                        HStack(spacing:20){
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundStyle(Color.white)
                            
                            Text("Percakapan")
                        }
                    }
                }
            }.navigationTitle("Pengaturan")
        }
    }
}

#Preview {
    ContentView()
}

struct About:View {
    var body: some View {
        Text("Hello Risyad Al Farizi")
    }
}

struct PesanBerbintang:View {
    var body: some View {
        Text("Ini halaman pesan berbintang")
    }
}

struct WhatsappWeb:View {
    var body: some View {
        Text("Ini halaman whatsapp web")
    }
}

struct Akun:View {
    var body: some View {
        Text("Ini halaman akun")
    }
}

struct Percakapan:View {
    var body: some View {
        Text("Ini halaman percakapan")
    }
}
