//
//  ElectricianViewController.h
//  Rdm
//
//  Created by Locke Li on 2018/12/26.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ElectricianViewController : UIViewController<MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *map;

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation;
@end

NS_ASSUME_NONNULL_END
