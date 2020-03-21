//
//  ViewController.swift
//  CoreGraphicsDrawing
//
//  Created by Mihail Costraci on 3/21/20.
//  Copyright © 2020 FeelIT-Services. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawSquareBezierPath()
        drawSquareBezierLines()
        drawCircleBezier()
        drawTraingleBezier()
        drawArcBezier()
    }

    func drawSquareBezierPath() {
        
        let path = UIBezierPath(rect: CGRect(x: 50, y: 50, width: 100, height: 100))
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.path = path.cgPath
        view.layer.addSublayer(shapeLayer)
    }
    
    func drawSquareBezierLines() {
        
        let path = UIBezierPath()
        path.lineWidth = 10
        let startPosition = CGPoint(x: 50, y: 160)
        
        path.move(to: startPosition)
        path.addLine(to: CGPoint(x: 150, y: 160))
        path.addLine(to: CGPoint(x: 150, y: 260))
        path.addLine(to: CGPoint(x: 50, y: 260))
        path.addLine(to: CGPoint(x: 50, y: 160))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = UIColor.green.cgColor
        shapeLayer.path = path.cgPath
        view.layer.addSublayer(shapeLayer)
    }
    
    func drawCircleBezier() {
        
        let rectFrame = CGRect(x: 50, y: 270, width: 100, height: 100)
        let path = UIBezierPath(roundedRect: rectFrame,
                                cornerRadius: rectFrame.size.height/2)
        
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.yellow.cgColor
        layer.path = path.cgPath
        view.layer.addSublayer(layer)
    }
    
    func drawTraingleBezier() {

        let path = UIBezierPath()
        path.move(to: CGPoint(x: 80, y: 380))
        path.addLine(to: CGPoint(x: 30, y: 480))
        path.addLine(to: CGPoint(x: 130, y: 480))
        path.addLine(to: CGPoint(x: 80, y: 380))
        
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.red.cgColor
        layer.path = path.cgPath
        view.layer.addSublayer(layer)
    }

    func drawArcBezier() {
        
        let path = UIBezierPath(arcCenter: CGPoint(x: 80, y: 500),
                                radius: 50,
                                startAngle: 0.toRadians(),
                                endAngle: 180.toRadians(),
                                clockwise: true)
        
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.brown.cgColor
        layer.path = path.cgPath
        view.layer.addSublayer(layer)
    }
    
}

extension Int {

    func toRadians() -> CGFloat {
        return CGFloat(Float(self) * Float.pi/180)
    }
}
