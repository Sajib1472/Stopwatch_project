//
//  ContentView.swift
//  Stopwatch
//
//  Created by Sajib Biswas on 17/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var elapsedTime = 0.0
    @State private var isRunning = false
    @State private var timer: Timer?
    @State private var laps: [TimeInterval] = []
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Stopwatch")
                .font(.largeTitle)
                .bold()
            
            Text(formatTime(elapsedTime))
                .font(.system(size: 40, weight: .bold, design: .monospaced))
                .padding()
            
            HStack(spacing: 15) {
                Button(action: startTimer) {
                    Text("Start")
                        .font(.headline)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(isRunning ? Color.gray : Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(isRunning)
                
                Button(action: pauseTimer) {
                    Text("Pause")
                        .font(.headline)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(!isRunning ? Color.gray : Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(!isRunning)
                
                Button(action: recordLap) {
                    Text("Lap")
                        .font(.headline)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(isRunning ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(!isRunning)
                
                Button(action: resetTimer) {
                    Text("Reset")
                        .font(.headline)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(!isRunning && elapsedTime == 0)
            }
            .padding(.horizontal)
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Laps")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                ScrollView {
                    ForEach(laps.indices, id: \.self) { index in
                        HStack {
                            Text("Lap \(index + 1):")
                            Spacer()
                            Text(formatTime(laps[index]))
                        }
                        .padding(.vertical, 4)
                    }
                }
                .frame(maxHeight: 200)
            }
        }
        .padding()
    }
    
    func startTimer() {
        isRunning = true
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            elapsedTime += 0.1
        }
    }
    
    func pauseTimer() {
        isRunning = false
        timer?.invalidate()
        timer = nil
    }
    
    func recordLap() {
        laps.append(elapsedTime)
    }
    
    func resetTimer() {
        isRunning = false
        timer?.invalidate()
        timer = nil
        elapsedTime = 0.0
        laps.removeAll()
    }
    
    func formatTime(_ time: TimeInterval) -> String {
        let totalMilliseconds = Int(time * 100)
        let milliseconds = totalMilliseconds % 100
        let totalSeconds = totalMilliseconds / 100
        let seconds = totalSeconds % 60
        let minutes = (totalSeconds / 60) % 60
        let hours = totalSeconds / 3600
        
        if hours > 0 {
            return String(format: "%02d:%02d:%02d.%02d", hours, minutes, seconds, milliseconds)
        } else {
            return String(format: "%02d:%02d.%02d", minutes, seconds, milliseconds)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
