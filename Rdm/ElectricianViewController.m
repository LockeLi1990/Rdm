//
//  ElectricianViewController.m
//  Rdm
//
//  Created by Locke Li on 2018/12/26.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import "ElectricianViewController.h"

@interface ElectricianViewController ()

@end

@implementation ElectricianViewController
@synthesize map;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKCoordinateRegion mapRegion;
    mapRegion.center.latitude=31.81071;
    mapRegion.center.longitude=117.196083;
    mapRegion.span.latitudeDelta=0.2;
    mapRegion.span.longitudeDelta=0.2;
    [map setRegion:mapRegion animated:YES];
    CLLocationCoordinate2D myCoordinate;
    myCoordinate.latitude=31.81071-0.006;
    myCoordinate.longitude=117.196083-0.0065;
    MKPlacemark *myMark;
    myMark=[[MKPlacemark alloc]initWithCoordinate:myCoordinate];
    [map addAnnotation:myMark];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    MKPinAnnotationView *pinDrop=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"myspot"];
    pinDrop.animatesDrop=YES;
    pinDrop.canShowCallout=YES;
    pinDrop.pinTintColor=[MKPinAnnotationView purplePinColor];
//    pinDrop
    return pinDrop;
}
@end
