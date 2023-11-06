import UIKit

public extension UIView {
    
    // MARK: - Case 5: Center x and y, height and width
    
    /// Case 5: Set height, width, and center x and y constraints.
    func centerWithSize(
        _ subView: UIView,
        centerX: SimpleConstraints.ConstraintXCenter?,
        centerY: SimpleConstraints.ConstraintYCenter?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.centerXAnchor.constraint(
                equalTo: centerX?.anchor ?? self.centerXAnchor,
                constant: centerX?.constant ?? 0),
            subView.centerYAnchor.constraint(
                equalTo: centerY?.anchor ?? self.centerYAnchor,
                constant: centerY?.constant ?? 0),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
}
