import UIKit

public struct Straint {
    let type: SimpleConstraints.ConsraintTypeUnsafe
    let constraint: SimpleConstraints.ConsraintAnchorUnsafe
    
    public init(t: SimpleConstraints.ConsraintTypeUnsafe, c: SimpleConstraints.ConsraintAnchorUnsafe) {
        self.type = t
        self.constraint = c
    }
}

extension SimpleConstraints {
    
    public enum ConsraintTypeUnsafe {
        case top, bottom, left, right
        case centerX, centerY
        case height, width
        case ratioHeight, ratioWidth
    }
    
    public enum ConsraintAnchorUnsafe {
        
        case top(UIView, CGFloat)
        case topSafe(UIView, CGFloat)
        case bottom(UIView, CGFloat)
        case bottomSafe(UIView, CGFloat)
        case left(UIView, CGFloat)
        case leftSafe(UIView, CGFloat)
        case right(UIView, CGFloat)
        case rightSafe(UIView, CGFloat)
        case centerX(UIView, CGFloat)
        case centerY(UIView, CGFloat)
        case length(CGFloat)
        case ratio(CGFloat)
                
        var constant: CGFloat {
            switch self {
            case .top(_, let constant):
                return constant
            case .bottom(_, let constant):
                return constant
            case .left(_, let constant):
                return constant
            case .right(_, let constant):
                return constant
            case .topSafe(_, let constant):
                return constant
            case .bottomSafe(_, let constant):
                return constant
            case .leftSafe(_, let constant):
                return constant
            case .rightSafe(_, let constant):
                return constant
            case .centerX(_, let constant):
                return constant
            case .centerY(_, let constant):
                return constant
            case .length, .ratio:
                return 0
            }
        }
        
        var heightOrWidth: CGFloat? {
            switch self {
            case .length(let length):
                return length
            case .left, .leftSafe, .right, .rightSafe, .centerX, .centerY, .top, .topSafe, .bottom, .bottomSafe, .ratio:
                return nil
            }
        }
        
        var ratio: CGFloat? {
            switch self {
            case .ratio(let ratio):
                return ratio
            case .left, .leftSafe, .right, .rightSafe, .centerX, .centerY, .top, .topSafe, .bottom, .bottomSafe, .length:
                return nil
            }
        }
        
        var anchorY: NSLayoutYAxisAnchor? {
            switch self {
            case .top(let view, _):
                return view.topAnchor
            case .bottom(let view, _):
                return view.bottomAnchor
            case .topSafe(let view, _):
                return view.safeAreaLayoutGuide.topAnchor
            case .bottomSafe(let view, _):
                return view.safeAreaLayoutGuide.bottomAnchor
            case .left, .leftSafe, .right, .rightSafe, .centerX, .centerY, .length, .ratio:
                return nil
            }
        }
        
        var anchorX: NSLayoutXAxisAnchor? {
            switch self {
            case .left(let view, _):
                return view.leftAnchor
            case .right(let view, _):
                return view.rightAnchor
            case .leftSafe(let view, _):
                return view.safeAreaLayoutGuide.leftAnchor
            case .rightSafe(let view, _):
                return view.safeAreaLayoutGuide.rightAnchor
            case .centerX, .centerY, .top, .topSafe, .bottom, .bottomSafe, .length, .ratio:
                return nil
            }
        }
        
        var centerX: NSLayoutXAxisAnchor? {
            switch self {
            case .centerX(let view, _):
                return view.centerXAnchor
            case .left, .leftSafe, .right, .rightSafe, .centerY, .ratio, .top, .topSafe, .bottom, .bottomSafe, .length:
                return nil
            }
        }
        
        var centerY: NSLayoutYAxisAnchor? {
            switch self {
            case .centerY(let view, _):
                return view.centerYAnchor
            case .left, .leftSafe, .right, .rightSafe, .centerX, .ratio, .top, .topSafe, .bottom, .bottomSafe, .length:
                return nil
            }
        }
        
        var description: String {
            switch self {
            case .top, .topSafe:
                return "Top Anchor"
            case .bottom, .bottomSafe:
                return "Bottom Anchor"
            case .left, .leftSafe:
                return "Left Anchor"
            case .right, .rightSafe:
                return "Right Anchor"
            case .centerX:
                return "CenterX Anchor"
            case .centerY:
                return "CenterY Anchor"
            case .length:
                return "Width or Height Anchor"
            case .ratio:
                return "Width or Height Anchor (Aspect Ratio)"
            }
        }
    }
}
