import UIKit

public extension UIView {
    
    // TODO: add function for unsafe constraints (parameter becomes array of contraints)
    /*
    func edgesUnsafe(
        _ subView: UIView,
        edges: [ConstraintEdgeDistances: ConstraintAnchor],
        height: CGFloat
    ) { }
    */
    
    // MARK: - Case 1: All edges
    
    func edges(
        _ subView: UIView,
        top: ConstraintYAnchor?,
        bottom: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        right: ConstraintXAnchor?,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        let top = top ?? ConstraintYAnchor(egde: .top, view: self)
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? ConstraintXAnchor(egde: .left, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)
        
        subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant).isActive = true
        subView.leftAnchor.constraint(equalTo: left.anchor, constant: left.constant).isActive = true
        subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant).isActive = true
        subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant).isActive = true
    }
    
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
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
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
        
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: top.anchor, constant: top.constant),
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
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
        top: ConstraintYAnchor?,
        right: ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let top = top ?? ConstraintYAnchor(egde: .top, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)

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
        bottom: ConstraintYAnchor?,
        left: ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let left = left ?? ConstraintXAnchor(egde: .left, view: self)

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
        bottom: ConstraintYAnchor?,
        right: ConstraintXAnchor?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        let bottom = bottom ?? ConstraintYAnchor(egde: .bottom, view: self)
        let right = right ?? ConstraintXAnchor(egde: .right, view: self)

        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)

        NSLayoutConstraint.activate([
            subView.bottomAnchor.constraint(equalTo: bottom.anchor, constant: bottom.constant),
            subView.rightAnchor.constraint(equalTo: right.anchor, constant: right.constant),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
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
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
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
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
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
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
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
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
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
    
    // MARK: - Case 5: Center x and y, height and width
    
    /// Case 5: Set height, width, and center x and y constraints.
    func centerWithSize(
        _ subView: UIView,
        centerX: ConstraintXCenter?,
        centerY: ConstraintYCenter?,
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
    
    // MARK: - Case 6: One edge, center x or y, height and width

    /// Case 6: Set top edge, center x, height, and width constraints.
    func topCenterWithSize(
        _ subView: UIView,
        top: ConstraintYAnchor?,
        centerX: ConstraintXCenter?,
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
        bottom: ConstraintYAnchor?,
        centerX: ConstraintXCenter?,
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
        left: ConstraintXAnchor?,
        centerY: ConstraintYCenter?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.leftAnchor.constraint(
                equalTo: left?.anchor ?? self.leftAnchor,
                constant: left?.constant ?? 0),
            subView.centerYAnchor.constraint(
                equalTo: centerY?.anchor ?? self.centerYAnchor,
                constant: centerY?.constant ?? 0),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }

    /// Case 6: Set right edge, center y, height, and width constraints.
    func rightCenterWithSize(
        _ subView: UIView,
        right: ConstraintXAnchor?,
        centerY: ConstraintYCenter?,
        height: CGFloat,
        width: CGFloat,
        addSubView: Bool = true,
        translateslatesAutoresizingMaskIntoConstraints: Bool = false
    ) {
        commonSetup(subView, sub: addSubView, translate: translatesAutoresizingMaskIntoConstraints)
        NSLayoutConstraint.activate([
            subView.rightAnchor.constraint(
                equalTo: right?.anchor ?? self.rightAnchor,
                constant: (right?.constant ?? 0)),
            subView.centerYAnchor.constraint(
                equalTo: centerY?.anchor ?? self.centerYAnchor,
                constant: centerY?.constant ?? 0),
            subView.heightAnchor.constraint(equalToConstant: height),
            subView.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    /// Removes all constraints affecting this view.
    func removeAllConstraints() {
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
    
    private func commonSetup(_ subView: UIView, sub: Bool, translate: Bool) {
        subView.translatesAutoresizingMaskIntoConstraints = translate
        if sub {
            self.addSubview(subView)
        }
    }
}
