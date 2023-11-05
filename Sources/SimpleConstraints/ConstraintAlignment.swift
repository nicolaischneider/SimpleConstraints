import Foundation
import UIKit

extension SimpleConstraints {
    
    enum EdgeY: Hashable {
        case top, bottom
    }
    
    enum EdgeX: Hashable {
        case left, right
    }
    
    public enum ConstraintYAnchor {
        case top(UIView, CGFloat, safe: Bool = false)
        case bottom(UIView, CGFloat, safe: Bool = false)
        
        init(egde: EdgeY, view: UIView) {
            switch egde {
            case .top:
                self = .top(view, 0)
            case .bottom:
                self = .bottom(view, 0)
            }
        }
        
        var constant: CGFloat {
            switch self {
            case .top(_, let constant, _):
                return constant
            case .bottom(_, let constant, _):
                return constant
            }
        }
        
        var anchor: NSLayoutYAxisAnchor {
            switch self {
            case .top(let view, _, safe: let safe):
                return safe ?
                view.safeAreaLayoutGuide.topAnchor :
                view.topAnchor
            case .bottom(let view, _, safe: let safe):
                return safe ?
                view.safeAreaLayoutGuide.bottomAnchor :
                view.bottomAnchor
            }
        }
    }
    
    public enum ConstraintXAnchor {
        case left(UIView, CGFloat, safe: Bool = false)
        case right(UIView, CGFloat, safe: Bool = false)
        
        init(egde: EdgeX, view: UIView) {
            switch egde {
            case .left:
                self = .left(view, 0)
            case .right:
                self = .right(view, 0)
            }
        }
        
        var constant: CGFloat {
            switch self {
            case .left(_, let constant, _):
                return constant
            case .right(_, let constant, _):
                return constant
            }
        }
        
        var anchor: NSLayoutXAxisAnchor {
            switch self {
            case .left(let view, _, safe: let safe):
                return safe ?
                view.safeAreaLayoutGuide.leftAnchor :
                view.leftAnchor
            case .right(let view, _, safe: let safe):
                return safe ?
                view.safeAreaLayoutGuide.rightAnchor :
                view.rightAnchor
            }
        }
    }
    
    public enum ConstraintXCenter {
        case centerX(UIView, CGFloat)
        
        init(view: UIView) {
            self = .centerX(view, 0)
        }
        
        var constant: CGFloat {
            switch self {
            case .centerX(_, let constant):
                return constant
            }
        }
        
        var anchor: NSLayoutXAxisAnchor {
            switch self {
            case .centerX(let view, _):
                return view.centerXAnchor
            }
        }
    }
    
    public enum ConstraintYCenter {
        case centerY(UIView, CGFloat)
        
        init(view: UIView) {
            self = .centerY(view, 0)
        }
        
        var constant: CGFloat {
            switch self {
            case .centerY(_, let constant):
                return constant
            }
        }
        
        var anchor: NSLayoutYAxisAnchor {
            switch self {
            case .centerY(let view, _):
                return view.centerYAnchor
            }
        }
    }
}
