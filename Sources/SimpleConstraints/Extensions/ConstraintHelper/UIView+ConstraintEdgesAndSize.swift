import UIKit

public extension UIView {

    // MARK: - Case 3: Two edges, height and width
    
    /// Case 3: Top and Left, edges
    func edgesAndSize(
        _ subView: UIView,
        top: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? ConstraintYAnchor(egde: .top, view: self)
        let left = left ?? ConstraintXAnchor(egde: .left, view: self)
        
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        
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
        top: ConstraintYAnchor?,
        right: ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? ConstraintYAnchor(egde: .top, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        
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
        bottom: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? ConstraintXAnchor(egde: .left, view: self)
        
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        
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
        bottom: ConstraintYAnchor?,
        right: ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)
        
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
}
