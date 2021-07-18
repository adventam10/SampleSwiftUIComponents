//
//  AnimationView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct AnimationView: View {

    @State private var isHidden = false
    @State private var isTransition = false

    var body: some View {
        VStack {
            HeaderView(text: "Animation")
            VStack {
                HStack {
                    VStack {
                        SubHeaderView(text: "default")
                        Circle()
                            .fill(Color.purple)
                            .frame(width: 44, height: 44)
                            .opacity(isHidden ? 0.0 : 1.0)
                            .animation(.default)
                    }
                    VStack {
                        SubHeaderView(text: "easeIn")
                        Circle()
                            .fill(Color.purple)
                            .frame(width: 44, height: 44)
                            .opacity(isHidden ? 0.0 : 1.0)
                            .animation(.easeIn(duration: 1.5))
                    }
                    VStack {
                        SubHeaderView(text: "easeInOut")
                        Circle()
                            .fill(Color.purple)
                            .frame(width: 44, height: 44)
                            .opacity(isHidden ? 0.0 : 1.0)
                            .animation(.easeInOut(duration: 1.5))
                    }
                    VStack {
                        SubHeaderView(text: "easeOut")
                        Circle()
                            .fill(Color.purple)
                            .frame(width: 44, height: 44)
                            .opacity(isHidden ? 0.0 : 1.0)
                            .animation(.easeOut(duration: 1.5))
                    }
                    VStack {
                        SubHeaderView(text: "linear")
                        Circle()
                        .fill(Color.purple)
                        .frame(width: 44, height: 44)
                        .opacity(isHidden ? 0.0 : 1.0)
                        .animation(.linear(duration: 1.5))
                    }
                }

                Button("Animation!") {
                    self.isHidden.toggle()
                }
            }

            // わからん
            HeaderView(text: "AnimatablePair")
            Text("🤷‍♂️")

            // わからん
            HeaderView(text: "EmptyAnimatableData")
            Text("🤷‍♂️")
            // EmptyAnimatableData()


            HeaderView(text: "AnyTransition")
            VStack {
                Button("Transition!") {
                    withAnimation {
                        isTransition.toggle()
                    }
                }
                HStack {
                    VStack {
                        SubHeaderView(text: "identity")
                        if isTransition {
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 44, height: 44)
                                .transition(AnyTransition.identity)
                        }
                    }
                    VStack {
                        SubHeaderView(text: "opacity")
                        if isTransition {
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 44, height: 44)
                                .transition(AnyTransition.opacity)
                        }
                    }
                    VStack {
                        SubHeaderView(text: "scale")
                        if isTransition {
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 44, height: 44)
                                .transition(AnyTransition.scale)
                        }
                    }
                    VStack {
                        SubHeaderView(text: "slide")
                        if isTransition {
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 44, height: 44)
                                .transition(AnyTransition.slide)
                        }
                    }
                }
            }

            Spacer()
        }.navigationTitle("Animation")
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
