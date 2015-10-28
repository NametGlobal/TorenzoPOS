//
//  adminpage.swift
//  SampleApp
//
//  Created by Namit on 23/10/15.
//  Copyright © 2015 Namit. All rights reserved.
//

import UIKit
import CoreData


class adminpage: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var json_data_url = "http://192.168.1.246:8080/POSWebServices/rest/categories/listCategories"
    
    @IBOutlet  var tableview: UITableView!
    
    @IBOutlet weak var btnplus: UIButton!
    
    @IBOutlet weak var btnall: UIButton!
    @IBOutlet weak var btnsent: UIButton!
    
    @IBOutlet weak var btnunsent: UIButton!
    
    var TableData:Array< datastruct > = Array < datastruct >()
    
    enum ErrorHandler:ErrorType
    {
        case ErrorFetchingResults
    }
    
    
    struct datastruct
    {
        var description:String?
     //   var contact:Int64?
        init(add: NSDictionary)
        {
            
            description = add["categoryName"] as? String
         //   contact = add["price"] as? Int64
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let indexPath = tableView.indexPathForSelectedRow()
        
        let currentCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell
        
        println(currentCell.textLabel!.text)
    }

    
    override func viewDidLoad() {
        
        btnplus.layer.borderWidth=2
        btnplus.layer.borderColor = UIColor.cyanColor().CGColor
        btnplus.layer.cornerRadius = 30
        
        btnall.layer.borderWidth=2
        btnall.layer.borderColor = UIColor.cyanColor().CGColor
        btnall.layer.cornerRadius = 30
        
        btnsent.layer.borderWidth=2
        btnsent.layer.borderColor = UIColor.cyanColor().CGColor
        btnsent.layer.cornerRadius = 30
        
        btnunsent.layer.borderWidth=2
        
        btnunsent.layer.borderColor = UIColor.cyanColor().CGColor
        btnunsent.layer.cornerRadius = 30
        
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        get_data_from_url(json_data_url)
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let data = TableData[indexPath.row]
        
        
        cell.textLabel?.text = data.description! 
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return TableData.count
    }
    
    
    
    
    
    
    
    func get_data_from_url(url:String)
    {
        
        
        let url:NSURL = NSURL(string: url)!
        let session = NSURLSession.sharedSession()
        
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "GET"
        request.cachePolicy = NSURLRequestCachePolicy.ReloadIgnoringCacheData
        
        
        let task = session.dataTaskWithRequest(request) {
            (
            let data, let response, let error) in
            
            guard let _:NSData = data, let _:NSURLResponse = response  where error == nil else {
                print("error")
                return
            }
            
            dispatch_async(dispatch_get_main_queue(), {
                let json = NSString(data: data!, encoding: NSASCIIStringEncoding)
                self.extract_json(json!)
                return
            })
            
        }
        
        task.resume()
        
    }
    
    
    func extract_json(data:NSString)
    {
        var parseError: NSError?
        let jsonData:NSData = data.dataUsingEncoding(NSASCIIStringEncoding)!
        let json: AnyObject?
        do {
            json = try NSJSONSerialization.JSONObjectWithData(jsonData, options: [])
        } catch let error as NSError {
            parseError = error
            json = nil
        }
        if (parseError == nil)
        {
            if let list = json as? NSArray
            {
                for (var i = 0; i < list.count ; i++ )
                {
                    if let data_block = list[i] as? NSDictionary
                    {
                        
                        TableData.append(datastruct(add: data_block))
                    }
                }
                
                do_table_refresh()
                
            }
            
        }
    }
    
    
    
    
    func do_table_refresh()
    {
        dispatch_async(dispatch_get_main_queue(), {
            self.tableview.reloadData()
            return
        })
    }
    
    
    
}

