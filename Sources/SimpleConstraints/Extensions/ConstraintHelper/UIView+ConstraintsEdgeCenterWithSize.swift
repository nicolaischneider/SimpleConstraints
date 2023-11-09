import UIKit

public extension UIView {
    
    // MARK: - Case 6: One edge, center x or y, height and width
    
    /// Case 6: Set top edge, center x, height, and width constraints.
    func topCenterWithSize(
        _ subView: UIView,
        top: SimpleConstraints.ConstraintYAnchor?,
        centerX: SimpleConstraints.ConstraintXCenter?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(
                equalTo: top?.anchor ?? self.topAnchor,
                constant: top?.constant ?? 0),
            subView.centerXAnchor.constraint(
                equalTo: centerX?.anchor ?? self.centerXAnchor,
                constant: centerX?.constant ?? 0),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    /// Case 6: Set bottom edge, center x, height, and width constraints.
    func bottomCenterWithSize(
        _ subView: UIView,
        bottom: SimpleConstraints.ConstraintYAnchor?,
        centerX: SimpleConstraints.ConstraintXCenter?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.bottomAnchor.constraint(
                equalTo: bottom?.anchor ?? self.bottomAnchor,
                constant: (bottom?.constant ?? 0)),
            subView.centerXAnchor.constraint(
                equalTo: centerX?.anchor ?? self.centerXAnchor,
                constant: centerX?.constant ?? 0),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    /// Case 6: Set left edge, center y, height, and width constraints.
    func leftCenterWithSize(
        _ subView: UIView,
        left: SimpleConstraints.ConstraintXAnchor?,
        centerY: SimpleConstraints.ConstraintYCenter?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.centerYAnchor.constraint(
                equalTo: centerY?.anchor ?? self.centerYAnchor,
                constant: centerY?.constant ?? 0),
            subView.leftAnchor.constraint(
                equalTo: left?.anchor ?? self.leftAnchor,
                constant: left?.constant ?? 0),
            subView.widthAnchor.constraint(equalToConstant: width),
            subView.heightAnchor.constraint(equalToConstant: height)
        ])
    }
    
    /// Case 6: Set right edge, center y, height, and width constraints.
    func rightCenterWithSize(
        _ subView: UIView,
        right: SimpleConstraints.ConstraintXAnchor?,
        centerY: SimpleConstraints.ConstraintYCenter?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translateslatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        subView.centerYAnchor.constraint(
                equalTo: centerY?.anchor ?? self.centerYAnchor,
                constant: centerY?.constant ?? 0).isActive = true
        subView.rightAnchor.constraint(
                equalTo: right?.anchor ?? self.rightAnchor,
                constant: right?.constant ?? 0).isActive = true
        subView.widthAnchor.constraint(equalToConstant: width).isActive = true
        subView.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
}
