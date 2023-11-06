import UIKit

public struct Straint {
    let type: SimpleConstraints.ConsraintTypeUnsafe
    let constraint: SimpleConstraints.ConsraintAnchorUnsafe
    
    init(t: SimpleConstraints.ConsraintTypeUnsafe, c: SimpleConstraints.ConsraintAnchorUnsafe) {
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
        
        case top(UIView, CGFloat, safe: Bool = false)
        case bottom(UIView, CGFloat, safe: Bool = false)
        case left(UIView, CGFloat, safe: Bool = false)
        case right(UIView, CGFloat, safe: Bool = false)
        case centerX(UIView, CGFloat)
        case centerY(UIView, CGFloat)
        case length(CGFloat)
        case ratio(CGFloat)
                
        var constant: CGFloat {
            switch self {
            case .top(_, let constant, _):
                return constant
            case .bottom(_, let constant, _):
                return constant
            case .left(_, let constant, _):
                return constant
            case .right(_, let constant, _):
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
            case .left, .right, .centerX, .centerY, .top, .bottom, .ratio:
                return nil
            }
        }
        
        var ratio: CGFloat? {
            switch self {
            case .ratio(let ratio):
                return ratio
            case .left, .right, .centerX, .centerY, .top, .bottom, .length:
                return nil
            }
        }
        
        var anchorY: NSLayoutYAxisAnchor? {
            switch self {
            case .top(let view, _, safe: let safe):
                return safe ?
                view.safeAreaLayoutGuide.topAnchor :
                view.topAnchor
            case .bottom(let view, _, safe: let safe):
                return safe ?
                view.safeAreaLayoutGuide.bottomAnchor :
                view.bottomAnchor
            case .left, .right, .centerX, .centerY, .length, .ratio:
                return nil
            }
        }
        
        var anchorX: NSLayoutXAxisAnchor? {
            switch self {
            case .left(let view, _, safe: let safe):
                return safe ?
                view.safeAreaLayoutGuide.leftAnchor :
                view.leftAnchor
            case .right(let view, _, safe: let safe):
                return safe ?
                view.safeAreaLayoutGuide.rightAnchor :
                view.rightAnchor
            case .top, .bottom, .centerX, .centerY, .length, .ratio:
                return nil
            }
        }
        
        var centerX: NSLayoutXAxisAnchor? {
            switch self {
            case .centerX(let view, _):
                return view.centerXAnchor
            case .top, .bottom, .left, .right, .centerY, .length, .ratio:
                return nil
            }
        }
        
        var centerY: NSLayoutYAxisAnchor? {
            switch self {
            case .centerY(let view, _):
                return view.centerYAnchor
            case .top, .bottom, .left, .right, .centerX, .length, .ratio:
                return nil
            }
        }
        
        var description: String {
            switch self {
            case .top:
                return "Top Anchor"
            case .bottom:
                return "Bottom Anchor"
            case .left:
                return "Left Anchor"
            case .right:
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
