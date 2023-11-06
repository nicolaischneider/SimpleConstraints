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
        case top(UIView, CGFloat)
        case topSafe(UIView, CGFloat)
        case bottom(UIView, CGFloat)
        case bottomSafe(UIView, CGFloat)
        
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
            case .top(_, let constant):
                return constant
            case .bottom(_, let constant):
                return constant
            case .topSafe(_, let constant):
                return constant
            case .bottomSafe(_, let constant):
                return constant
            }
        }
        
        var anchor: NSLayoutYAxisAnchor {
            switch self {
            case .top(let view, _):
                return view.topAnchor
            case .bottom(let view, _):
                return view.bottomAnchor
            case .topSafe(let view, _):
                return view.safeAreaLayoutGuide.topAnchor
            case .bottomSafe(let view, _):
                return view.safeAreaLayoutGuide.bottomAnchor
            }
        }
    }
    
    public enum ConstraintXAnchor {
        case left(UIView, CGFloat)
        case leftSafe(UIView, CGFloat)
        case right(UIView, CGFloat)
        case rightSafe(UIView, CGFloat)
        
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
            case .left(_, let constant):
                return constant
            case .right(_, let constant):
                return constant
            case .leftSafe(_, let constant):
                return constant
            case .rightSafe(_, let constant):
                return constant
            }
        }
        
        var anchor: NSLayoutXAxisAnchor {
            switch self {
            case .left(let view, _):
                return view.leftAnchor
            case .right(let view, _):
                return view.rightAnchor
            case .leftSafe(let view, _):
                return view.safeAreaLayoutGuide.leftAnchor
            case .rightSafe(let view, _):
                return view.safeAreaLayoutGuide.rightAnchor
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
