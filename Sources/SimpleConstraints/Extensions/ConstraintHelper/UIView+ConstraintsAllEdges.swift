import UIKit

public extension UIView {
    
    // MARK: - Case 1: All edges
    
    func edges(
        _ subView: UIView,
        top: SimpleConstraints.ConstraintYAnchor?,
        bottom: SimpleConstraints.ConstraintYAnchor?,
        left: SimpleConstraints.ConstraintXAnchor?,
        right: SimpleConstraints.ConstraintXAnchor?,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        let top = top ?? SimpleConstraints.ConstraintYAnchor(egde: .top, view: self)
        let bottom = bottom ?? SimpleConstraints.ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? SimpleConstraints.ConstraintXAnchor(egde: .left, view: self)
        let right = right ?? SimpleConstraints.ConstraintXAnchor(egde: .right, view: self)
        
        subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant).isActive = true
        subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant).isActive = true
        subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant).isActive = true
        subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant).isActive = true
    }
}
