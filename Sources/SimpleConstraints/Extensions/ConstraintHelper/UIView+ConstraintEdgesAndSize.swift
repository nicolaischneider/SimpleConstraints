import UIKit

public extension UIView {

    // MARK: - Case 3: Two edges, height and width
    
    /// Case 3: Top and Left, edges
    func edgesAndSize(
        _ subView: UIView,
        top: SimpleConstraints.ConstraintYAnchor?,
        left: SimpleConstraints.ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? SimpleConstraints.ConstraintYAnchor(egde: .top, view: self)
        let left = left ?? SimpleConstraints.ConstraintXAnchor(egde: .left, view: self)
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant),
            subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    /// Case 3: Top and Right, edges
    func edgesAndSize(
        _ subView: UIView,
        top: SimpleConstraints.ConstraintYAnchor?,
        right: SimpleConstraints.ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? SimpleConstraints.ConstraintYAnchor(egde: .top, view: self)
        let right = right ?? SimpleConstraints.ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    /// Case 3: Bottom and Left edges
    func edgesAndSize(
        _ subView: UIView,
        bottom: SimpleConstraints.ConstraintYAnchor?,
        left: SimpleConstraints.ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let bottom = bottom ?? SimpleConstraints.ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? SimpleConstraints.ConstraintXAnchor(egde: .left, view: self)
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    /// Case 3: Bottom and Right edges
    func edgesAndSize(
        _ subView: UIView,
        bottom: SimpleConstraints.ConstraintYAnchor?,
        right: SimpleConstraints.ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let bottom = bottom ?? SimpleConstraints.ConstraintYAnchor(egde: .bottom, view: self)
        let right = right ?? SimpleConstraints.ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
}
