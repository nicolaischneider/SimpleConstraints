import UIKit

public extension UIView {
    
    // MARK: - Case 2: Three edges and height/width
    
    /// Case 2: Top, Left, Right and Height  Excluding Bottom
    func edgesAndHeight(
        _ subView: UIView,
        top: SimpleConstraints.ConstraintYAnchor?,
        left: SimpleConstraints.ConstraintXAnchor?,
        right: SimpleConstraints.ConstraintXAnchor?,
        height: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? SimpleConstraints.ConstraintYAnchor(egde: .top, view: self)
        let left = left ?? SimpleConstraints.ConstraintXAnchor(egde: .left, view: self)
        let right = right ?? SimpleConstraints.ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant).isActive = true
        subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant).isActive = true
        subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant).isActive = true
        subView.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    /// Case 2: Bottom, Left, Right and Height  Excluding Top
    func edgesAndHeight(
        _ subView: UIView,
        bottom: SimpleConstraints.ConstraintYAnchor?,
        left: SimpleConstraints.ConstraintXAnchor?,
        right: SimpleConstraints.ConstraintXAnchor?,
        height: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let bottom = bottom ?? SimpleConstraints.ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? SimpleConstraints.ConstraintXAnchor(egde: .left, view: self)
        let right = right ?? SimpleConstraints.ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.heightAnchor.constraint(equalToConstant: height)
        ])
    }
    
    /// Case 2: Top, Bottom, Left and Width  Excluding Right
    func edgesAndWidth(
        _ subView: UIView,
        top: SimpleConstraints.ConstraintYAnchor?,
        bottom: SimpleConstraints.ConstraintYAnchor?,
        left: SimpleConstraints.ConstraintXAnchor?,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? SimpleConstraints.ConstraintYAnchor(egde: .top, view: self)
        let bottom = bottom ?? SimpleConstraints.ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? SimpleConstraints.ConstraintXAnchor(egde: .left, view: self)
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant),
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    /// Case 2: Top, Bottom, Right and Width  Excluding Left
    func edgesAndWidth(
        _ subView: UIView,
        top: SimpleConstraints.ConstraintYAnchor?,
        bottom: SimpleConstraints.ConstraintYAnchor?,
        right: SimpleConstraints.ConstraintXAnchor?,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? SimpleConstraints.ConstraintYAnchor(egde: .top, view: self)
        let bottom = bottom ?? SimpleConstraints.ConstraintYAnchor(egde: .bottom, view: self)
        let right = right ?? SimpleConstraints.ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant),
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
}
