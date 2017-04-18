/*
 Author    : Adriano Alves
 Date      : April 12 2017
 Course    : Swift CS112
 File      : MyViewController.swift
 Project   : FlashCards
 Objective : Assigment 10 
             Super class to hold the method used in all views
 
 Copyright © 2017 Adriano Alves. All rights reserved.
 
 */


import UIKit

class MySuperViewController : UIViewController
{
    // Mark: dismissButton This method will be called in all views that uses dimiss button
    @IBAction func dismissButton(_ sender : UIButton)
    {
        dismiss(animated: true)
    }
    // Mark : viewDidDisappear , used to shows that the view will be killed
    override func viewDidDisappear(_ animated: Bool)
    {
        super.viewDidDisappear(animated)
        debug()
    }
    // Mark : debug() , used for debug
    func debug()
    {
        print("\(String(describing : type(of: self))) did disappear")
    }
}
