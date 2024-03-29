import UIKit

public extension UIView {
    
    // MARK: - Case 4: Three edges and aspect ratio
    
    /// Case 4: Set the top, left, right edges and aspect ratio based on height.
    func edgesAndRatio(
        _ subView: UIView,
        top: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        right: ConstraintXAnchor?,
        aspectRatio: CGFloat, // Height to width ratio
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(
                equalTo: top?.anchor ?? self.topAnchor,
                constant: top?.constant ?? 0),
            subView.leftAnchor.constraint(
                equalTo: left?.anchor ?? self.leftAnchor,
                constant: left?.constant ?? 0),
            subView.rightAnchor.constraint(
                equalTo: right?.anchor ?? self.rightAnchor,
                constant: (right?.constant ?? 0)),
            subView.heightAnchor.constraint(
                equalTo: subView.widthAnchor,
                multiplier: aspectRatio)
        ])
    }
    
    /// Case 4: Set the left, bottom, right edges and aspect ratio based on height.
    func edgesAndRatio(
        _ subView: UIView,
        left: ConstraintXAnchor?,
        bottom: ConstraintYAnchor?,
        right: ConstraintXAnchor?,
        aspectRatio: CGFloat, // Height to width ratio
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.bottomAnchor.constraint(
                equalTo: bottom?.anchor ?? self.bottomAnchor,
                constant: (bottom?.constant ?? 0)),
            subView.leftAnchor.constraint(
                equalTo: left?.anchor ?? self.leftAnchor,
                constant: left?.constant ?? 0),
            subView.rightAnchor.constraint(
                equalTo: right?.anchor ?? self.rightAnchor,
                constant: (right?.constant ?? 0)),
            subView.heightAnchor.constraint(
                equalTo: subView.widthAnchor,
                multiplier: aspectRatio)
        ])
    }
    
    /// Case 4: Set the top, left, bottom edges and aspect ratio based on width.
    func edgesAndRatio(
        _ subView: UIView,
        top: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        bottom: ConstraintYAnchor?,
        aspectRatio: CGFloat, // Width to height ratio
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(
                equalTo: top?.anchor ?? self.topAnchor,
                constant: top?.constant ?? 0),
            subView.leftAnchor.constraint(
                equalTo: left?.anchor ?? self.leftAnchor,
                constant: left?.constant ?? 0),
            subView.bottomAnchor.constraint(
                equalTo: bottom?.anchor ?? self.bottomAnchor,
                constant: (bottom?.constant ?? 0)),
            subView.widthAnchor.constraint(
                equalTo: subView.heightAnchor,
                multiplier: aspectRatio)
        ])
    }
    
    /// Case 4: Set the top, right, bottom edges and aspect ratio based on width.
    func edgesAndRatio(
        _ subView: UIView,
        top: ConstraintYAnchor?,
        right: ConstraintXAnchor?,
        bottom: ConstraintYAnchor?,
        aspectRatio: CGFloat, // Width to height ratio
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, addSubview: addSubView, tAMIC: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(
                equalTo: top?.anchor ?? self.topAnchor,
                constant: top?.constant ?? 0),
            subView.rightAnchor.constraint(
                equalTo: right?.anchor ?? self.rightAnchor,
                constant: (right?.constant ?? 0)),
            subView.bottomAnchor.constraint(
                equalTo: bottom?.anchor ?? self.bottomAnchor,
                constant: (bottom?.constant ?? 0)),
            subView.widthAnchor.constraint(
                equalTo: subView.heightAnchor,
                multiplier: aspectRatio)
        ])
    }
}
