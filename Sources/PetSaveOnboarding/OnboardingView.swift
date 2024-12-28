

import SwiftUI

struct OnboardingView: View {
  // 1
  let onboarding: OnboardingModel1
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12, style: .circular)
        .fill(.white)
        .shadow(radius: 12)
        .padding(.horizontal, 20)
      VStack(alignment: .center) {
        VStack {
          // 2
          Text(onboarding.title)
            .foregroundColor(.rwDark1)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .padding(.horizontal, 10)
          Text(onboarding.description)
            .foregroundColor(.rwDark1)
            .multilineTextAlignment(.center)
            .padding([.top, .bottom], 10)
            .padding(.horizontal, 10)
          onboarding.image
            .resizable()
            .frame(width: 140, height: 140, alignment: .center)
            .foregroundColor(.rwDark1)
            .aspectRatio(contentMode: .fit)
        }
        .padding()
      }
    }
  }
}

#Preview {
//    OnboardingView1()
}
