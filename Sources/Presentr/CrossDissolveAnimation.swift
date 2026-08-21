//
//  CrossDissolveAnimation.swift
//  Pods
//
//  Created by Daniel Lozano Valdés on 3/21/17.
//
//

import Foundation
import UIKit

public class CrossDissolveAnimation: PresentrAnimation {

    override public func beforeAnimation(using transitionContext: PresentrTransitionContext) {
        transitionContext.animatingView?.alpha = transitionContext.isPresenting ? 0.0 : 1.0
    }

    override public func performAnimation(using transitionContext: PresentrTransitionContext) {
        transitionContext.animatingView?.alpha = transitionContext.isPresenting ? 1.0 : 0.0
    }

    override public func afterAnimation(using transitionContext: PresentrTransitionContext) {
        transitionContext.animatingView?.alpha = 1.0
    }

}
