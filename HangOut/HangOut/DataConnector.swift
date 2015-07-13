//
//  DataConnector.swift
//  HangOut
//
//  Created by Matt Gaide on 7/12/15.
//  Copyright (c) 2015 Matt Gaide. All rights reserved.
//

import Foundation
import UIKit
class DataConnector {


func getData(){
    let dynamoDB = AWSDynamoDB.defaultDynamoDB()
    let listTableInput = AWSDynamoDBListTablesInput()
    dynamoDB.listTables(listTableInput).continueWithBlock{ (task: AWSTask!) -> AnyObject! in
        
        let listTablesOutput = task.result as! AWSDynamoDBListTablesOutput
        
        for tableName : AnyObject in listTablesOutput.tableNames {
            println("\(tableName)")
        }
        
        return listTablesOutput
    }
}
}
