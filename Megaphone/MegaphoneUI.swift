//
//  MegaphoneUI.swift
//  Megaphone
//
//  Created by Denis Lavrov on 26/03/16.
//  Copyright (c) 2016 bahus. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class MegaphoneUI : NSObject {

    //// Drawing Methods

    public class func drawIcon() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let color4 = UIColor(red: 0.136, green: 0.000, blue: 0.740, alpha: 1.000)
        var color4RedComponent: CGFloat = 1,
            color4GreenComponent: CGFloat = 1,
            color4BlueComponent: CGFloat = 1
        color4.getRed(&color4RedComponent, green: &color4GreenComponent, blue: &color4BlueComponent, alpha: nil)

        let color9 = UIColor(red: (color4RedComponent * 0.5), green: (color4GreenComponent * 0.5), blue: (color4BlueComponent * 0.5), alpha: (CGColorGetAlpha(color4.CGColor) * 0.5 + 0.5))

        //// Gradient Declarations
        let gradient5 = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color9.CGColor, color4.CGColor], [0, 1])!

        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(roundedRect: CGRectMake(0.25, -0.25, 60, 60), cornerRadius: 12)
        CGContextSaveGState(context)
        rectangle2Path.addClip()
        CGContextDrawLinearGradient(context, gradient5, CGPointMake(30.25, -0.25), CGPointMake(30.25, 59.75), CGGradientDrawingOptions())
        CGContextRestoreGState(context)


        //// Symbol Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, -13, 40.77)
        CGContextRotateCTM(context, -45 * CGFloat(M_PI) / 180)

        let symbolRect = CGRectMake(0, 0, 71, 47)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)

        MegaphoneUI.drawMegaphone()
        CGContextRestoreGState(context)

        CGContextRestoreGState(context)
    }

    public class func drawBnW() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Group 5
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, -1, 41)
        CGContextRotateCTM(context, -45 * CGFloat(M_PI) / 180)



        //// Group 7
        //// Group 8
        //// Bezier 8 Drawing
        let bezier8Path = UIBezierPath()
        bezier8Path.moveToPoint(CGPointMake(16.5, 13.63))
        bezier8Path.addCurveToPoint(CGPointMake(39.5, 4.24), controlPoint1: CGPointMake(29.5, 13.63), controlPoint2: CGPointMake(39.5, 4.24))
        bezier8Path.addLineToPoint(CGPointMake(39.5, 31.47))
        bezier8Path.addCurveToPoint(CGPointMake(16.5, 22.08), controlPoint1: CGPointMake(39.5, 31.47), controlPoint2: CGPointMake(28.5, 22.08))
        bezier8Path.addCurveToPoint(CGPointMake(16.5, 13.63), controlPoint1: CGPointMake(16.5, 19.26), controlPoint2: CGPointMake(16.5, 13.63))
        bezier8Path.lineCapStyle = .Round;

        bezier8Path.lineJoinStyle = .Bevel;

        UIColor.lightGrayColor().setStroke()
        bezier8Path.lineWidth = 0.5
        bezier8Path.stroke()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(roundedRect: CGRectMake(4.95, 13.44, 14.17, 8.86), byRoundingCorners: [UIRectCorner.TopLeft, UIRectCorner.BottomLeft], cornerRadii: CGSizeMake(4.43, 4.43))
        rectangle3Path.closePath()
        UIColor.darkGrayColor().setFill()
        rectangle3Path.fill()




        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(39.62, 15.56))
        bezier2Path.addCurveToPoint(CGPointMake(42, 18.03), controlPoint1: CGPointMake(40.95, 15.62), controlPoint2: CGPointMake(42, 16.7))
        bezier2Path.addCurveToPoint(CGPointMake(39.62, 20.51), controlPoint1: CGPointMake(42, 19.36), controlPoint2: CGPointMake(40.95, 20.44))
        bezier2Path.addCurveToPoint(CGPointMake(39.62, 15.56), controlPoint1: CGPointMake(39.62, 18.86), controlPoint2: CGPointMake(39.62, 17.18))
        bezier2Path.closePath()
        UIColor.lightGrayColor().setFill()
        bezier2Path.fill()





        CGContextRestoreGState(context)
    }

    public class func drawMessageTypes() {
        //// Color Declarations
        let informationColor = UIColor(red: 0.251, green: 0.753, blue: 1.000, alpha: 1.000)
        var informationColorHueComponent: CGFloat = 1,
            informationColorSaturationComponent: CGFloat = 1,
            informationColorBrightnessComponent: CGFloat = 1
        informationColor.getHue(&informationColorHueComponent, saturation: &informationColorSaturationComponent, brightness: &informationColorBrightnessComponent, alpha: nil)

        let criticalColor = UIColor(hue: 0, saturation: informationColorSaturationComponent, brightness: informationColorBrightnessComponent, alpha: CGColorGetAlpha(informationColor.CGColor))
        let adColor = UIColor(hue: 0.17, saturation: informationColorSaturationComponent, brightness: informationColorBrightnessComponent, alpha: CGColorGetAlpha(informationColor.CGColor))
        let tagColor = UIColor(hue: 0.35, saturation: informationColorSaturationComponent, brightness: informationColorBrightnessComponent, alpha: CGColorGetAlpha(informationColor.CGColor))

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRectMake(11, 12, 154, 37))
        informationColor.setFill()
        rectanglePath.fill()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRectMake(11, 49, 154, 37))
        criticalColor.setFill()
        rectangle2Path.fill()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRectMake(11, 86, 154, 37))
        adColor.setFill()
        rectangle3Path.fill()


        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(rect: CGRectMake(11, 123, 154, 37))
        tagColor.setFill()
        rectangle4Path.fill()
    }

    public class func drawMegaphone() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let color = UIColor(red: 1.000, green: 0.575, blue: 0.000, alpha: 1.000)
        var colorRedComponent: CGFloat = 1,
            colorGreenComponent: CGFloat = 1,
            colorBlueComponent: CGFloat = 1
        color.getRed(&colorRedComponent, green: &colorGreenComponent, blue: &colorBlueComponent, alpha: nil)

        let color3 = UIColor(red: (colorRedComponent * 0.7 + 0.3), green: (colorGreenComponent * 0.7 + 0.3), blue: (colorBlueComponent * 0.7 + 0.3), alpha: (CGColorGetAlpha(color.CGColor) * 0.7 + 0.3))
        let color2 = UIColor(red: 0.775, green: 0.775, blue: 0.775, alpha: 1.000)
        var color2RedComponent: CGFloat = 1,
            color2GreenComponent: CGFloat = 1,
            color2BlueComponent: CGFloat = 1
        color2.getRed(&color2RedComponent, green: &color2GreenComponent, blue: &color2BlueComponent, alpha: nil)

        let color5 = UIColor(red: (color2RedComponent * 0 + 1), green: (color2GreenComponent * 0 + 1), blue: (color2BlueComponent * 0 + 1), alpha: (CGColorGetAlpha(color2.CGColor) * 0 + 1))
        let color6 = UIColor(red: 0.000, green: 0.643, blue: 1.000, alpha: 1.000)
        let color7 = color6.colorWithAlphaComponent(0.5)

        //// Gradient Declarations
        let gradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color.CGColor, color3.CGColor, color.CGColor], [0, 0.35, 1])!
        let gradient2 = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color2.CGColor, color5.CGColor, color2.CGColor], [0, 0.51, 1])!
        let gradient3 = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color7.CGColor, color7.blendedColorWithFraction(0.5, ofColor: color6).CGColor, color6.CGColor, color6.blendedColorWithFraction(0.5, ofColor: color7).CGColor, color7.CGColor], [0, 0.1, 0.51, 0.9, 1])!

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.45)
        shadow.shadowOffset = CGSizeMake(0.1, -0.1)
        shadow.shadowBlurRadius = 6
        let shadow2 = NSShadow()
        shadow2.shadowColor = color6.colorWithAlphaComponent(0.8 * CGColorGetAlpha(color6.CGColor))
        shadow2.shadowOffset = CGSizeMake(0.1, -0.1)
        shadow2.shadowBlurRadius = 2
        let shadow3 = NSShadow()
        shadow3.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.33)
        shadow3.shadowOffset = CGSizeMake(0.1, -0.1)
        shadow3.shadowBlurRadius = 1

        //// Group 5
        //// Group 6
        CGContextSaveGState(context)
        CGContextSetShadowWithColor(context, shadow2.shadowOffset, shadow2.shadowBlurRadius, (shadow2.shadowColor as! UIColor).CGColor)
        CGContextBeginTransparencyLayer(context, nil)


        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        bezier6Path.moveToPoint(CGPointMake(58, 22.5))
        bezier6Path.addCurveToPoint(CGPointMake(48.36, 37), controlPoint1: CGPointMake(58, 30.51), controlPoint2: CGPointMake(53.68, 37))
        bezier6Path.addCurveToPoint(CGPointMake(43.85, 35.31), controlPoint1: CGPointMake(46.73, 37), controlPoint2: CGPointMake(45.19, 36.39))
        bezier6Path.addCurveToPoint(CGPointMake(46.17, 35.74), controlPoint1: CGPointMake(44.59, 35.59), controlPoint2: CGPointMake(45.37, 35.74))
        bezier6Path.addCurveToPoint(CGPointMake(55.37, 22.5), controlPoint1: CGPointMake(51.25, 35.74), controlPoint2: CGPointMake(55.37, 29.81))
        bezier6Path.addCurveToPoint(CGPointMake(46.17, 9.26), controlPoint1: CGPointMake(55.37, 15.19), controlPoint2: CGPointMake(51.25, 9.26))
        bezier6Path.addCurveToPoint(CGPointMake(43.85, 9.69), controlPoint1: CGPointMake(45.37, 9.26), controlPoint2: CGPointMake(44.59, 9.41))
        bezier6Path.addCurveToPoint(CGPointMake(48.36, 8), controlPoint1: CGPointMake(45.19, 8.61), controlPoint2: CGPointMake(46.73, 8))
        bezier6Path.addCurveToPoint(CGPointMake(58, 22.5), controlPoint1: CGPointMake(53.68, 8), controlPoint2: CGPointMake(58, 14.49))
        bezier6Path.closePath()
        bezier6Path.lineCapStyle = .Round;

        bezier6Path.lineJoinStyle = .Round;

        CGContextSaveGState(context)
        bezier6Path.addClip()
        CGContextDrawLinearGradient(context, gradient3, CGPointMake(50.92, 8), CGPointMake(50.92, 37), CGGradientDrawingOptions())
        CGContextRestoreGState(context)


        //// Bezier 7 Drawing
        let bezier7Path = UIBezierPath()
        bezier7Path.moveToPoint(CGPointMake(64, 22.5))
        bezier7Path.addCurveToPoint(CGPointMake(54.47, 40), controlPoint1: CGPointMake(64, 32.16), controlPoint2: CGPointMake(59.73, 40))
        bezier7Path.addCurveToPoint(CGPointMake(50, 37.96), controlPoint1: CGPointMake(52.85, 40), controlPoint2: CGPointMake(51.33, 39.26))
        bezier7Path.addCurveToPoint(CGPointMake(52.3, 38.48), controlPoint1: CGPointMake(50.73, 38.3), controlPoint2: CGPointMake(51.51, 38.48))
        bezier7Path.addCurveToPoint(CGPointMake(61.4, 22.5), controlPoint1: CGPointMake(57.33, 38.48), controlPoint2: CGPointMake(61.4, 31.32))
        bezier7Path.addCurveToPoint(CGPointMake(52.3, 6.52), controlPoint1: CGPointMake(61.4, 13.68), controlPoint2: CGPointMake(57.33, 6.52))
        bezier7Path.addCurveToPoint(CGPointMake(50, 7.04), controlPoint1: CGPointMake(51.51, 6.52), controlPoint2: CGPointMake(50.73, 6.7))
        bezier7Path.addCurveToPoint(CGPointMake(54.47, 5), controlPoint1: CGPointMake(51.33, 5.74), controlPoint2: CGPointMake(52.85, 5))
        bezier7Path.addCurveToPoint(CGPointMake(64, 22.5), controlPoint1: CGPointMake(59.73, 5), controlPoint2: CGPointMake(64, 12.84))
        bezier7Path.closePath()
        bezier7Path.lineCapStyle = .Round;

        bezier7Path.lineJoinStyle = .Round;

        CGContextSaveGState(context)
        bezier7Path.addClip()
        CGContextDrawLinearGradient(context, gradient3, CGPointMake(57, 5), CGPointMake(57, 40), CGGradientDrawingOptions())
        CGContextRestoreGState(context)


        //// Bezier 8 Drawing
        let bezier8Path = UIBezierPath()
        bezier8Path.moveToPoint(CGPointMake(52, 22.5))
        bezier8Path.addCurveToPoint(CGPointMake(42.36, 34), controlPoint1: CGPointMake(52, 28.85), controlPoint2: CGPointMake(47.68, 34))
        bezier8Path.addCurveToPoint(CGPointMake(37.85, 32.66), controlPoint1: CGPointMake(40.73, 34), controlPoint2: CGPointMake(39.19, 33.52))
        bezier8Path.addCurveToPoint(CGPointMake(40.17, 33), controlPoint1: CGPointMake(38.59, 32.88), controlPoint2: CGPointMake(39.37, 33))
        bezier8Path.addCurveToPoint(CGPointMake(49.37, 22.5), controlPoint1: CGPointMake(45.25, 33), controlPoint2: CGPointMake(49.37, 28.3))
        bezier8Path.addCurveToPoint(CGPointMake(40.17, 12), controlPoint1: CGPointMake(49.37, 16.7), controlPoint2: CGPointMake(45.25, 12))
        bezier8Path.addCurveToPoint(CGPointMake(37.85, 12.34), controlPoint1: CGPointMake(39.37, 12), controlPoint2: CGPointMake(38.59, 12.12))
        bezier8Path.addCurveToPoint(CGPointMake(42.36, 11), controlPoint1: CGPointMake(39.19, 11.48), controlPoint2: CGPointMake(40.73, 11))
        bezier8Path.addCurveToPoint(CGPointMake(52, 22.5), controlPoint1: CGPointMake(47.68, 11), controlPoint2: CGPointMake(52, 16.15))
        bezier8Path.closePath()
        CGContextSaveGState(context)
        bezier8Path.addClip()
        CGContextDrawLinearGradient(context, gradient3, CGPointMake(44.92, 11), CGPointMake(44.92, 34), CGGradientDrawingOptions())
        CGContextRestoreGState(context)


        CGContextEndTransparencyLayer(context)
        CGContextRestoreGState(context)


        //// Group 7
        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(roundedRect: CGRectMake(40, 20, 6, 5), cornerRadius: 2.5)
        color5.setFill()
        rectangle3Path.fill()


        //// Group 8
        CGContextSaveGState(context)
        CGContextSetShadowWithColor(context, shadow.shadowOffset, shadow.shadowBlurRadius, (shadow.shadowColor as! UIColor).CGColor)
        CGContextBeginTransparencyLayer(context, nil)


        //// Bezier 9 Drawing
        let bezier9Path = UIBezierPath()
        bezier9Path.moveToPoint(CGPointMake(20.5, 18.5))
        bezier9Path.addCurveToPoint(CGPointMake(43.5, 8.5), controlPoint1: CGPointMake(33.5, 18.5), controlPoint2: CGPointMake(43.5, 8.5))
        bezier9Path.addLineToPoint(CGPointMake(43.5, 37.5))
        bezier9Path.addCurveToPoint(CGPointMake(20.5, 27.5), controlPoint1: CGPointMake(43.5, 37.5), controlPoint2: CGPointMake(32.5, 27.5))
        bezier9Path.addCurveToPoint(CGPointMake(20.5, 18.5), controlPoint1: CGPointMake(20.5, 24.5), controlPoint2: CGPointMake(20.5, 18.5))
        bezier9Path.lineCapStyle = .Round;

        bezier9Path.lineJoinStyle = .Bevel;

        CGContextSaveGState(context)
        bezier9Path.addClip()
        CGContextDrawLinearGradient(context, gradient2,
            CGPointMake(30.22, 11.32),
            CGPointMake(33.38, 30.71),
            [CGGradientDrawingOptions.DrawsBeforeStartLocation, CGGradientDrawingOptions.DrawsAfterEndLocation])
        CGContextRestoreGState(context)
        color2.setStroke()
        bezier9Path.lineWidth = 1
        bezier9Path.stroke()


        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(roundedRect: CGRectMake(6.12, 18, 14.88, 10), byRoundingCorners: [UIRectCorner.TopLeft, UIRectCorner.BottomLeft], cornerRadii: CGSizeMake(5, 5))
        rectangle6Path.closePath()
        CGContextSaveGState(context)
        rectangle6Path.addClip()
        CGContextDrawLinearGradient(context, gradient, CGPointMake(13.56, 18), CGPointMake(13.56, 28), CGGradientDrawingOptions())
        CGContextRestoreGState(context)


        //// Bezier 10 Drawing
        let bezier10Path = UIBezierPath()
        bezier10Path.moveToPoint(CGPointMake(20.97, 18.08))
        bezier10Path.addCurveToPoint(CGPointMake(20.97, 27.98), controlPoint1: CGPointMake(20.97, 27.98), controlPoint2: CGPointMake(20.97, 27.98))
        color.setStroke()
        bezier10Path.lineWidth = 0.5
        bezier10Path.stroke()


        //// Rectangle 7 Drawing
        let rectangle7Path = UIBezierPath(roundedRect: CGRectMake(42.99, 7.83, 1, 30.41), cornerRadius: 0.5)
        CGContextSaveGState(context)
        rectangle7Path.addClip()
        CGContextDrawLinearGradient(context, gradient, CGPointMake(43.99, 23.03), CGPointMake(42.99, 23.03), CGGradientDrawingOptions())
        CGContextRestoreGState(context)


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(10.81, 18.01))
        bezier2Path.addLineToPoint(CGPointMake(10.73, 18.01))
        bezier2Path.addLineToPoint(CGPointMake(10.68, 18.02))
        bezier2Path.addLineToPoint(CGPointMake(10.61, 18.03))
        bezier2Path.addLineToPoint(CGPointMake(10.55, 18.03))
        bezier2Path.addLineToPoint(CGPointMake(10.48, 18.04))
        bezier2Path.addLineToPoint(CGPointMake(10.42, 18.05))
        bezier2Path.addLineToPoint(CGPointMake(10.35, 18.06))
        bezier2Path.addLineToPoint(CGPointMake(10.3, 18.07))
        bezier2Path.addLineToPoint(CGPointMake(10.23, 18.08))
        bezier2Path.addLineToPoint(CGPointMake(10.17, 18.09))
        bezier2Path.addLineToPoint(CGPointMake(10.11, 18.1))
        bezier2Path.addLineToPoint(CGPointMake(10.05, 18.11))
        bezier2Path.addLineToPoint(CGPointMake(9.98, 18.13))
        bezier2Path.addLineToPoint(CGPointMake(9.93, 18.14))
        bezier2Path.addLineToPoint(CGPointMake(9.86, 18.16))
        bezier2Path.addLineToPoint(CGPointMake(9.81, 18.17))
        bezier2Path.addLineToPoint(CGPointMake(9.74, 18.19))
        bezier2Path.addLineToPoint(CGPointMake(9.69, 18.21))
        bezier2Path.addLineToPoint(CGPointMake(9.62, 18.23))
        bezier2Path.addLineToPoint(CGPointMake(9.57, 18.24))
        bezier2Path.addLineToPoint(CGPointMake(9.51, 18.27))
        bezier2Path.addLineToPoint(CGPointMake(9.46, 18.28))
        bezier2Path.addLineToPoint(CGPointMake(9.39, 18.31))
        bezier2Path.addLineToPoint(CGPointMake(9.34, 18.33))
        bezier2Path.addLineToPoint(CGPointMake(9.28, 18.35))
        bezier2Path.addLineToPoint(CGPointMake(9.23, 18.37))
        bezier2Path.addLineToPoint(CGPointMake(9.16, 18.4))
        bezier2Path.addLineToPoint(CGPointMake(9.05, 18.45))
        bezier2Path.addLineToPoint(CGPointMake(8.94, 18.5))
        bezier2Path.addLineToPoint(CGPointMake(8.83, 18.56))
        bezier2Path.addLineToPoint(CGPointMake(8.72, 18.61))
        bezier2Path.addLineToPoint(CGPointMake(8.61, 18.67))
        bezier2Path.addLineToPoint(CGPointMake(8.51, 18.74))
        bezier2Path.addLineToPoint(CGPointMake(8.4, 18.8))
        bezier2Path.addLineToPoint(CGPointMake(8.3, 18.87))
        bezier2Path.addLineToPoint(CGPointMake(8.2, 18.94))
        bezier2Path.addLineToPoint(CGPointMake(8.1, 19.01))
        bezier2Path.addLineToPoint(CGPointMake(8.01, 19.09))
        bezier2Path.addLineToPoint(CGPointMake(7.91, 19.17))
        bezier2Path.addLineToPoint(CGPointMake(7.82, 19.25))
        bezier2Path.addLineToPoint(CGPointMake(7.73, 19.33))
        bezier2Path.addLineToPoint(CGPointMake(7.64, 19.41))
        bezier2Path.addLineToPoint(CGPointMake(7.55, 19.5))
        bezier2Path.addCurveToPoint(CGPointMake(9.56, 19.5), controlPoint1: CGPointMake(8.4, 19.5), controlPoint2: CGPointMake(8.72, 19.5))
        bezier2Path.addCurveToPoint(CGPointMake(10.5, 19.5), controlPoint1: CGPointMake(10.4, 19.5), controlPoint2: CGPointMake(10.4, 19.5))
        bezier2Path.addLineToPoint(CGPointMake(10.5, 20.5))
        bezier2Path.addCurveToPoint(CGPointMake(9.56, 20.5), controlPoint1: CGPointMake(10.4, 20.5), controlPoint2: CGPointMake(10.4, 20.5))
        bezier2Path.addCurveToPoint(CGPointMake(6.79, 20.5), controlPoint1: CGPointMake(8.47, 20.5), controlPoint2: CGPointMake(8.26, 20.5))
        bezier2Path.addCurveToPoint(CGPointMake(7.55, 19.5), controlPoint1: CGPointMake(7, 20.14), controlPoint2: CGPointMake(7.26, 19.8))
        bezier2Path.addLineToPoint(CGPointMake(7.63, 19.42))
        bezier2Path.addLineToPoint(CGPointMake(7.72, 19.34))
        bezier2Path.addLineToPoint(CGPointMake(7.81, 19.26))
        bezier2Path.addLineToPoint(CGPointMake(7.9, 19.18))
        bezier2Path.addLineToPoint(CGPointMake(7.99, 19.1))
        bezier2Path.addLineToPoint(CGPointMake(8.08, 19.03))
        bezier2Path.addLineToPoint(CGPointMake(8.18, 18.96))
        bezier2Path.addLineToPoint(CGPointMake(8.28, 18.89))
        bezier2Path.addLineToPoint(CGPointMake(8.38, 18.82))
        bezier2Path.addLineToPoint(CGPointMake(8.48, 18.76))
        bezier2Path.addLineToPoint(CGPointMake(8.58, 18.69))
        bezier2Path.addLineToPoint(CGPointMake(8.68, 18.63))
        bezier2Path.addLineToPoint(CGPointMake(8.79, 18.58))
        bezier2Path.addLineToPoint(CGPointMake(8.9, 18.52))
        bezier2Path.addLineToPoint(CGPointMake(9.01, 18.47))
        bezier2Path.addLineToPoint(CGPointMake(9.12, 18.42))
        bezier2Path.addLineToPoint(CGPointMake(9.23, 18.37))
        bezier2Path.addLineToPoint(CGPointMake(9.28, 18.35))
        bezier2Path.addLineToPoint(CGPointMake(9.34, 18.33))
        bezier2Path.addLineToPoint(CGPointMake(9.39, 18.31))
        bezier2Path.addLineToPoint(CGPointMake(9.46, 18.28))
        bezier2Path.addLineToPoint(CGPointMake(9.51, 18.27))
        bezier2Path.addLineToPoint(CGPointMake(9.57, 18.24))
        bezier2Path.addLineToPoint(CGPointMake(9.62, 18.23))
        bezier2Path.addLineToPoint(CGPointMake(9.69, 18.21))
        bezier2Path.addLineToPoint(CGPointMake(9.74, 18.19))
        bezier2Path.addLineToPoint(CGPointMake(9.81, 18.17))
        bezier2Path.addLineToPoint(CGPointMake(9.86, 18.16))
        bezier2Path.addLineToPoint(CGPointMake(9.93, 18.14))
        bezier2Path.addLineToPoint(CGPointMake(9.98, 18.13))
        bezier2Path.addLineToPoint(CGPointMake(10.05, 18.11))
        bezier2Path.addLineToPoint(CGPointMake(10.11, 18.1))
        bezier2Path.addLineToPoint(CGPointMake(10.17, 18.09))
        bezier2Path.addLineToPoint(CGPointMake(10.23, 18.08))
        bezier2Path.addLineToPoint(CGPointMake(10.3, 18.07))
        bezier2Path.addLineToPoint(CGPointMake(10.35, 18.06))
        bezier2Path.addLineToPoint(CGPointMake(10.42, 18.05))
        bezier2Path.addLineToPoint(CGPointMake(10.48, 18.04))
        bezier2Path.addLineToPoint(CGPointMake(10.55, 18.03))
        bezier2Path.addLineToPoint(CGPointMake(10.61, 18.03))
        bezier2Path.addLineToPoint(CGPointMake(10.68, 18.02))
        bezier2Path.addLineToPoint(CGPointMake(10.73, 18.01))
        bezier2Path.addLineToPoint(CGPointMake(10.81, 18.01))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(CGPointMake(10.25, 21.5))
        bezier2Path.addCurveToPoint(CGPointMake(10.25, 22.5), controlPoint1: CGPointMake(10.25, 21.5), controlPoint2: CGPointMake(10.25, 22.5))
        bezier2Path.addCurveToPoint(CGPointMake(6.15, 22.5), controlPoint1: CGPointMake(10.25, 22.5), controlPoint2: CGPointMake(6.17, 22.5))
        bezier2Path.addCurveToPoint(CGPointMake(6.35, 21.5), controlPoint1: CGPointMake(6.18, 22.16), controlPoint2: CGPointMake(6.25, 21.82))
        bezier2Path.addLineToPoint(CGPointMake(10.25, 21.5))
        bezier2Path.addLineToPoint(CGPointMake(10.25, 21.5))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(CGPointMake(10.25, 23.5))
        bezier2Path.addCurveToPoint(CGPointMake(10.25, 24.5), controlPoint1: CGPointMake(10.25, 23.5), controlPoint2: CGPointMake(10.25, 24.5))
        bezier2Path.addCurveToPoint(CGPointMake(6.35, 24.5), controlPoint1: CGPointMake(10.25, 24.5), controlPoint2: CGPointMake(6.38, 24.5))
        bezier2Path.addCurveToPoint(CGPointMake(6.15, 23.5), controlPoint1: CGPointMake(6.25, 24.18), controlPoint2: CGPointMake(6.18, 23.85))
        bezier2Path.addLineToPoint(CGPointMake(10.25, 23.5))
        bezier2Path.addLineToPoint(CGPointMake(10.25, 23.5))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(CGPointMake(6.43, 24.74))
        bezier2Path.addLineToPoint(CGPointMake(6.45, 24.79))
        bezier2Path.addLineToPoint(CGPointMake(6.48, 24.86))
        bezier2Path.addLineToPoint(CGPointMake(6.5, 24.91))
        bezier2Path.addLineToPoint(CGPointMake(6.53, 24.99))
        bezier2Path.addLineToPoint(CGPointMake(6.55, 25.03))
        bezier2Path.addLineToPoint(CGPointMake(6.59, 25.11))
        bezier2Path.addLineToPoint(CGPointMake(6.65, 25.24))
        bezier2Path.addCurveToPoint(CGPointMake(6.79, 25.5), controlPoint1: CGPointMake(6.7, 25.34), controlPoint2: CGPointMake(6.75, 25.42))
        bezier2Path.addCurveToPoint(CGPointMake(9.56, 25.5), controlPoint1: CGPointMake(8.26, 25.5), controlPoint2: CGPointMake(8.47, 25.5))
        bezier2Path.addCurveToPoint(CGPointMake(10.5, 25.5), controlPoint1: CGPointMake(10.4, 25.5), controlPoint2: CGPointMake(10.4, 25.5))
        bezier2Path.addLineToPoint(CGPointMake(10.5, 26.5))
        bezier2Path.addCurveToPoint(CGPointMake(9.56, 26.5), controlPoint1: CGPointMake(10.4, 26.5), controlPoint2: CGPointMake(10.4, 26.5))
        bezier2Path.addCurveToPoint(CGPointMake(7.65, 26.5), controlPoint1: CGPointMake(8.73, 26.5), controlPoint2: CGPointMake(8.41, 26.5))
        bezier2Path.addCurveToPoint(CGPointMake(6.79, 25.5), controlPoint1: CGPointMake(7.26, 26.2), controlPoint2: CGPointMake(7, 25.86))
        bezier2Path.addCurveToPoint(CGPointMake(6.66, 25.27), controlPoint1: CGPointMake(6.75, 25.42), controlPoint2: CGPointMake(6.7, 25.34))
        bezier2Path.addLineToPoint(CGPointMake(6.61, 25.15))
        bezier2Path.addLineToPoint(CGPointMake(6.55, 25.03))
        bezier2Path.addLineToPoint(CGPointMake(6.53, 24.99))
        bezier2Path.addLineToPoint(CGPointMake(6.5, 24.91))
        bezier2Path.addLineToPoint(CGPointMake(6.48, 24.86))
        bezier2Path.addLineToPoint(CGPointMake(6.45, 24.79))
        bezier2Path.addLineToPoint(CGPointMake(6.43, 24.74))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(CGPointMake(21, 18))
        bezier2Path.addCurveToPoint(CGPointMake(21, 28), controlPoint1: CGPointMake(21, 18), controlPoint2: CGPointMake(21, 28))
        bezier2Path.addCurveToPoint(CGPointMake(21, 18), controlPoint1: CGPointMake(21, 28), controlPoint2: CGPointMake(21, 18))
        bezier2Path.addLineToPoint(CGPointMake(11.12, 18))
        bezier2Path.addLineToPoint(CGPointMake(21, 18))
        bezier2Path.addLineToPoint(CGPointMake(21, 18))
        bezier2Path.closePath()
        color.setFill()
        bezier2Path.fill()

        ////// Bezier 2 Inner Shadow
        CGContextSaveGState(context)
        CGContextClipToRect(context, bezier2Path.bounds)
        CGContextSetShadow(context, CGSizeMake(0, 0), 0)
        CGContextSetAlpha(context, CGColorGetAlpha((shadow3.shadowColor as! UIColor).CGColor))
        CGContextBeginTransparencyLayer(context, nil)
        let bezier2OpaqueShadow = (shadow3.shadowColor as! UIColor).colorWithAlphaComponent(1)
        CGContextSetShadowWithColor(context, shadow3.shadowOffset, shadow3.shadowBlurRadius, bezier2OpaqueShadow.CGColor)
        CGContextSetBlendMode(context, .SourceOut)
        CGContextBeginTransparencyLayer(context, nil)

        bezier2OpaqueShadow.setFill()
        bezier2Path.fill()

        CGContextEndTransparencyLayer(context)
        CGContextEndTransparencyLayer(context)
        CGContextRestoreGState(context)



        CGContextEndTransparencyLayer(context)
        CGContextRestoreGState(context)
    }

}



extension UIColor {
    func blendedColorWithFraction(fraction: CGFloat, ofColor color: UIColor) -> UIColor {
        var r1: CGFloat = 1.0, g1: CGFloat = 1.0, b1: CGFloat = 1.0, a1: CGFloat = 1.0
        var r2: CGFloat = 1.0, g2: CGFloat = 1.0, b2: CGFloat = 1.0, a2: CGFloat = 1.0

        self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)

        return UIColor(red: r1 * (1 - fraction) + r2 * fraction,
            green: g1 * (1 - fraction) + g2 * fraction,
            blue: b1 * (1 - fraction) + b2 * fraction,
            alpha: a1 * (1 - fraction) + a2 * fraction);
    }
}
