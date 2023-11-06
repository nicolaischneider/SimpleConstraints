import UIKit

public extension UIView {
    
    // TODO: add function for unsafe constraints (parameter becomes array of contraints)
    func unsafeConstraints(
        _ subView: UIView,
        constraints: [Straint],
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        for constraint in constraints {
            classifyAndSetConstraint(subView: subView, constraint: (constraint.type, constraint.constraint))
        }
    }
}

extension UIView {
    
    private func classifyAndSetConstraint(
        subView: UIView,
        constraint: (SimpleConstraints.ConsraintTypeUnsafe, SimpleConstraints.ConsraintAnchorUnsafe)
    ) {
        let anchorToSet = constraint.1
        switch constraint.0 {
        case .top:
            guard let anchor = anchorToSet.anchorY else {
                debugPrint("Top Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.topAnchor.constraint(equalTo: anchor, constant: anchorToSet.constant).isActive = true
            
        case .bottom:
            guard let anchor = anchorToSet.anchorY else {
                debugPrint("Bottom Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.bottomAnchor.constraint(equalTo: anchor, constant: anchorToSet.constant).isActive = true
            
        case .left:
            guard let anchor = anchorToSet.anchorX else {
                debugPrint("Left Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.leftAnchor.constraint(equalTo: anchor, constant: anchorToSet.constant).isActive = true
            
        case .right:
            guard let anchor = anchorToSet.anchorX else {
                debugPrint("Right Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.rightAnchor.constraint(equalTo: anchor, constant: anchorToSet.constant).isActive = true
            
        case .centerX:
            guard let anchor = anchorToSet.centerX else {
                debugPrint("CenterX Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.centerXAnchor.constraint(equalTo: anchor, constant: anchorToSet.constant).isActive = true
            
        case .centerY:
            guard let anchor = anchorToSet.centerY else {
                debugPrint("CenterY Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.centerYAnchor.constraint(equalTo: anchor, constant: anchorToSet.constant).isActive = true
            
        case .height:
            guard let height = anchorToSet.heightOrWidth else {
                debugPrint("Height Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.heightAnchor.constraint(equalToConstant: height).isActive = true
            
        case .width:
            guard let width = anchorToSet.heightOrWidth else {
                debugPrint("Height Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.heightAnchor.constraint(equalToConstant: width).isActive = true
        
        case .ratioHeight:
            guard let ratio = anchorToSet.ratio else {
                debugPrint("Height Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.heightAnchor.constraint(equalTo: subView.widthAnchor, multiplier: ratio).isActive = true
            
        case .ratioWidth:
            guard let ratio = anchorToSet.ratio else {
                debugPrint("Height Anchor can't set \(anchorToSet.description) for sub view.")
                return
            }
            subView.widthAnchor.constraint(equalTo: subView.heightAnchor, multiplier: ratio).isActive = true
        }
    }
}
