import Subsonic // Assuming this is a custom library for playing sounds
import SwiftUI

struct ContentView: View {
    let names = ["Cat", "Dog", "Lion", "Parrot", "Crow"]
    let columns = [
        GridItem(.adaptive(minimum: 250))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(names, id: \.self) { name in
                        Button {
                            play(sound: "\(name).m4a")
                        } label: {
                            VStack { // Wrap Image and Text in a VStack
                                Image(name)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(25)
                                    .padding(.horizontal)
                                Text(name) // Display the name under the image
                                    .foregroundColor(.yellow)
                                    .font(.largeTitle) // Optional: Adjust the font as needed
                                    .padding(.bottom) // Add some padding below the text
                            }
                        }
                    }
                }
            }
            .navigationTitle("Animals List")
        }
        .navigationViewStyle(.stack)
    }
}

// Make sure to define the 'play' function if it's not already defined
func play(sound: String) {
    // Implementation for playing the sound
    // This is just a placeholder. Replace it with actual code to play the sound.
}
