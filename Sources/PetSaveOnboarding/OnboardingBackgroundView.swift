

import SwiftUI

struct OnboardingBackgroundView: View {
  let backgroundPets = Pet.backgroundPets
  // 2
  var body: some View {
    ZStack {
      ForEach(backgroundPets) { pet in
        pet.petImage
          .resizable()
          .frame(width: 200, height: 200, alignment: .center)
          .position(pet.position)
      }
    }
  }
}

#Preview {
    OnboardingBackgroundView()
}
