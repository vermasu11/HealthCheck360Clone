//
//  HealthDataService.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation
import HealthKit

class HealthDataService {
    var healthStore: HKHealthStore?
    
    init() {
        if HKHealthStore.isHealthDataAvailable() {
            healthStore = HKHealthStore()
        }
    }
    
    
    func requestAuthorization(completion: @escaping (Bool, Error?) -> Void) {
        // Specify the data types I want to access
        guard let healthStore = healthStore else { return }
        
        let typesToRead: Set<HKObjectType> = [
            HKObjectType.quantityType(forIdentifier: .stepCount)!,
            // Add more types as needed
        ]
        
        healthStore.requestAuthorization(toShare: [], read: typesToRead) { success, error in
            completion(success, error)
        }
    }
}
