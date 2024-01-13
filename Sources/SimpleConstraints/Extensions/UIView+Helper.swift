import UIKit

extension UIView {
    
    /// creates a common setup for the subview
    /// - Parameters:
    ///   - subView: The subview to be modified
    ///   - addSubview: Choose whether it should be added to the main view
    ///   - tAMIC: set the flag `translatesAutoresizingMaskIntoConstraints`
    func commonSetup(_ subView: UIView, addSubview: Bool, tAMIC: Bool) {
        subView.translatesAutoresizingMaskIntoConstraints = tAMIC
        if addSubview {
            self.addSubview(subView)
        }
    }
    
    /// Enable the constraints of the given anchor
    /// - Parameter anchor: right, left or centerX anchor
    public func enableConstraint(for anchor: EdgeX) {
        self.toggleConstraint(for: ConstraintXAnchor(egde: anchor, view: self).anchor, enable: true)
    }
    
    /// Disable the constraints of the given anchor
    /// - Parameter anchor: right, left or centerX anchor
    public func disableConstraint(for anchor: EdgeX) {
        self.toggleConstraint(for: ConstraintXAnchor(egde: anchor, view: self).anchor, enable: false)
    }
    
    /// Enable the constraints of the given anchor
    /// - Parameter anchor: top, bottom or centerY anchor
    public func enableConstraint(for anchor: EdgeY) {
        self.toggleConstraint(for: ConstraintYAnchor(egde: anchor, view: self).anchor, enable: true)
    }
    
    /// Disable the constraints of the given anchor
    /// - Parameter anchor: top, bottom or centerY anchor
    public func disableConstraint(for anchor: EdgeY) {
        self.toggleConstraint(for: ConstraintYAnchor(egde: anchor, view: self).anchor, enable: false)
    }

    /// Enable the constraints of the given anchor
    /// - Parameter anchor: height or width anchor
    public func enableConstraint(for anchor: Length) {
        self.toggleConstraint(for: anchor.anchor(view: self), enable: true)
    }
    
    /// Disable the constraints of the given anchor
    /// - Parameter anchor: height or width anchor
    public func disableConstraint(for anchor: Length) {
        self.toggleConstraint(for: anchor.anchor(view: self), enable: false)
    }
    
    /// Removes all constraints affecting this view.
    public func removeAllConstraints() {
        // Constraints held by the view itself
        self.removeConstraints(self.constraints)
        
        // Constraints held by the superview that affect this view
        self.superview?.constraints.filter { constraint in
            // Check if the constraint references the view
            return constraint.firstItem as? UIView == self || constraint.secondItem as? UIView == self
        }.forEach { constraint in
            // Remove each constraint that affects the view
            self.superview?.removeConstraint(constraint)
        }
    }
}

extension UIView {
    
    private func toggleConstraint(for anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, enable: Bool) {
        // Find and deactivate the constraint for the specified anchor
        constraints.first {
            $0.firstAnchor == anchor || $0.secondAnchor == anchor
        }?.isActive = enable

        // Also check the superview's constraints
        superview?.constraints.first {
            $0.firstAnchor == anchor || $0.secondAnchor == anchor
        }?.isActive = enable
    }
    
    private func toggleConstraint(for anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, enable: Bool) {
        // Find and deactivate the constraint for the specified anchor
        constraints.first {
            $0.firstAnchor == anchor || $0.secondAnchor == anchor
        }?.isActive = enable

        // Also check the superview's constraints
        superview?.constraints.first {
            $0.firstAnchor == anchor || $0.secondAnchor == anchor
        }?.isActive = enable
    }
    
    private func toggleConstraint(for anchor: NSLayoutDimension, enable: Bool) {
        // Find and deactivate the constraint for the specified anchor
        constraints.first {
            $0.firstAnchor == anchor || $0.secondAnchor == anchor
        }?.isActive = enable

        // Also check the superview's constraints
        superview?.constraints.first {
            $0.firstAnchor == anchor || $0.secondAnchor == anchor
        }?.isActive = enable
    }
}
