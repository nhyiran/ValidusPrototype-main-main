//
//  workoutFeature.swift
//  ValidusPrototype
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct workoutFeature: View {
    
    @State private var textWorkout = ""
    
    let workouts = ["Lunges", "Go for a run", "Burpees", "Goblin Squats", "Sit Ups", "Forearm Plank", "Wall sit", "Jumping Jacks","Side Plank", "Leg Raises", "15 Minute Yoga Session", "Russian Twists", "Push Ups"]
    
    var body: some View {
        VStack {
            Text("Excercise Log")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            Spacer ()
                .frame(height: 400.0)
            
            Text("Workout Generator")
                .font(.title)
                .fontWeight(.bold)
            
            Button("Generate") {
                func pickWorkout() -> String {
                    let random = Int.random(in: 0..<12)
                    let workout = workouts[random]
                    //var random = workout[random]                    var workout = workout.randomElement()!
                    return workout
                }
                
                textWorkout = pickWorkout()
                //print(randomWorkout)
            }
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            Spacer()
                .frame(height: 68.001)
            
            Text(textWorkout)
                .font(.title)
            
            
            Spacer ()
            
        }
    }
    
    struct workoutFeature_Previews: PreviewProvider {
        static var previews: some View {
            workoutFeature()
        }
    }
 }

