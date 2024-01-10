import UIKit

public extension UIView {
    
    // MARK: - Case 2: Three edges and height/width
    
    /// Case 2: Top, Left, Right and Height  Excluding Bottom
    func edgesAndHeight(
        _ subView: UIView,
        top: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        right: ConstraintXAnchor?,
        height: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? ConstraintYAnchor(egde: .top, view: self)
        let left = left ?? ConstraintXAnchor(egde: .left, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        
        subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant).isActive = true
        subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant).isActive = true
        subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant).isActive = true
        subView.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    /// Case 2: Bottom, Left, Right and Height  Excluding Top
    func edgesAndHeight(
        _ subView: UIView,
        bottom: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        right: ConstraintXAnchor?,
        height: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? ConstraintXAnchor(egde: .left, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        
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
        top: ConstraintYAnchor?,
        bottom: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? ConstraintYAnchor(egde: .top, view: self)
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? ConstraintXAnchor(egde: .left, view: self)
        
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        
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
        top: ConstraintYAnchor?,
        bottom: ConstraintYAnchor?,
        right: ConstraintXAnchor?,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? ConstraintYAnchor(egde: .top, view: self)
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant),
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    /// Case 3: Left, Right, Center Y and Height
    func edgesAndCenterYWithHeight(
        _ subView: UIView,
        left: ConstraintXAnchor?,
        right: ConstraintXAnchor?,
        centerY: ConstraintYAnchor?,
        height: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let left = left ?? ConstraintXAnchor(egde: .left, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)
        let centerY = centerY ?? ConstraintYAnchor(egde: .centerY, view: self)

        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)

        NSLayoutConstraint.activate([
            subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.centerYAnchor.constraint(equalTo: centerY.anchor, constant: centerY.constant),
            subView.heightAnchor.constraint(equalToConstant: height)
        ])
    }

    /// Case 3: Top, Bottom, Center X and Width
    func edgesAndCenterXWithWidth(
        _ subView: UIView,
        top: ConstraintYAnchor?,
        bottom: ConstraintYAnchor?,
        centerX: ConstraintXAnchor?,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? ConstraintYAnchor(egde: .top, view: self)
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let centerX = centerX ?? ConstraintXAnchor(egde: .centerX, view: self)

        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)

        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant),
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.centerXAnchor.constraint(equalTo: centerX.anchor, constant: centerX.constant),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
}
