import UIKit

extension UIView {
    
    func commonSetup(_ subView: UIView, sub: Bool, translate: Bool) {
        subView.translatesAutoresizingMaskIntoConstraints = translate
        if sub {
            self.addSubview(subView)
        }
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
