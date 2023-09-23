import Foundation
import UIKit

extension UIView {
    
    func edgeConstraints (
        _ subView: UIView,
        top: CGFloat? = nil,
        bottom: CGFloat? = nil,
        left: CGFloat? = nil,
        right: CGFloat? = nil
    ) {
        self.edgeConstraintsWithOtherObjects(subView, objects: [:])
    }
    
    func edgeConstraintsWithOtherObjects (
        _ subView: UIView,
        top: CGFloat? = nil,
        bottom: CGFloat? = nil,
        left: CGFloat? = nil,
        right: CGFloat? = nil,
        objects: [ConstraintEdge: UIView]
    ) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subView)
        
        // update anchors
        let anchors = anchors(objects: objects)
        
        subView.topAnchor.constraint(
            equalTo: anchors.top,
            constant: top ?? 0).isActive = true
        subView.leftAnchor.constraint(
            equalTo: anchors.left,
            constant: left ?? 0).isActive = true
        subView.rightAnchor.constraint(
            equalTo: anchors.right,
            constant: right ?? 0).isActive = true
        subView.bottomAnchor.constraint(
            equalTo: anchors.bottom,
            constant: bottom ?? 0).isActive = true
    }
    
    func edgeConstraintsWithHeight (
        _ subView: UIView,
        top: CGFloat? = nil,
        left: CGFloat? = nil,
        right: CGFloat? = nil,
        height: CGFloat? = nil
    ) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subView)
        subView.topAnchor.constraint(
            equalTo: self.topAnchor,
            constant: top ?? 0).isActive = true
        subView.leftAnchor.constraint(
            equalTo: self.leftAnchor,
            constant: left ?? 0).isActive = true
        subView.rightAnchor.constraint(
            equalTo: self.rightAnchor,
            constant: right ?? 0).isActive = true
        subView.heightAnchor.constraint(
            equalToConstant: height ?? 0).isActive = true
    }
    
    func edgeConstraintsWithHeightWithOtherObjects (
        _ subView: UIView,
        top: CGFloat? = nil,
        left: CGFloat? = nil,
        right: CGFloat? = nil,
        height: CGFloat? = nil,
        objects: [ConstraintEdge: UIView]
    ) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subView)
        let anchors = anchors(objects: objects)
        subView.topAnchor.constraint(
            equalTo: anchors.top,
            constant: top ?? 0).isActive = true
        subView.leftAnchor.constraint(
            equalTo: anchors.left,
            constant: left ?? 0).isActive = true
        subView.rightAnchor.constraint(
            equalTo: anchors.right,
            constant: right ?? 0).isActive = true
        subView.heightAnchor.constraint(
            equalToConstant: height ?? 0).isActive = true
    }
    
    private func anchors (objects: [ConstraintEdge: UIView]) -> (
        top: NSLayoutYAxisAnchor,
        bottom: NSLayoutYAxisAnchor,
        left: NSLayoutXAxisAnchor,
        right: NSLayoutXAxisAnchor
    ) {
        var topAnchor: NSLayoutYAxisAnchor = self.topAnchor
        var bottomAnchor: NSLayoutYAxisAnchor = self.bottomAnchor
        var leftAnchor: NSLayoutXAxisAnchor = self.leftAnchor
        var rightAnchor: NSLayoutXAxisAnchor = self.rightAnchor
        
        // Search for specified objects to anchor to
        for (edge, view) in objects {
            switch edge {
            case .top:
                topAnchor = view.topAnchor
            case .bottom:
                bottomAnchor = view.bottomAnchor
            case .left:
                leftAnchor = view.leftAnchor
            case .right:
                rightAnchor = view.rightAnchor
            }
        }
        
        return (
            top: topAnchor,
            bottom: bottomAnchor,
            left: leftAnchor,
            right: rightAnchor
        )
    }
}
