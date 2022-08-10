# CupTrackr: a sustainable menstrual tracking app
<img align="left" src="https://user-images.githubusercontent.com/53469845/183949376-0bb5b2d8-0d0b-46eb-ae2c-632db2568de8.png" width= "200" height="200" />

## Description 
*CupTrackr* is an iOS application developed on sustainable period tracking using the SwiftUI framework. It implements several APIS including AVKit and MapKit as well as integrates Cloud Firestore databases for realtime data syncing.
<br />

*CupTrackr* is the first iOS app that helps users track their menstrual cup flow. This app was developed in hopes of promoting sustainable menstrual practices and thus, improving period equity. 

## Features <br />


- allows users to take quizzes on sustainable menstruation<br/>

- allows users to take a Cup Quiz to help determine how often they should change their cup
- mood tracker that provides guidance for period symptoms
- tracks menstrual cup flow
- notifies users when to change their cup. 

&nbsp;

<img src="https://user-images.githubusercontent.com/53469845/183836644-2b3c3a9c-446d-4f7f-8986-560b75aeaf3b.png" width="200" height="400" /> <img src="https://user-images.githubusercontent.com/53469845/183836764-735405e8-e2d3-4259-b28f-39feab39e2d5.png" width="200" height="400" /> <img src="https://user-images.githubusercontent.com/53469845/183836742-df037079-2180-4961-9f12-a4abac662b73.png" width="200" height="400" />  <img src="https://user-images.githubusercontent.com/53469845/183836777-0a298ccc-1ebb-4231-9520-6ac880020a2c.png" width="200" height="400" />

&nbsp;

# Developer's Section
The application implements the **MVVM architecture pattern**.
## Model
The **Model** folder contains the structure of all the data that the JSON files will decode (located in CupForChange/Data). 
```
CupForChange/Model
```
## View
The **View** folder contains all the UI views and screens available on the application. 
```
CupForChange/View
```
## View-Model
The **App** folder represents View-Model and consists of all domain-specific logic pertaining to views in **View**
```
CupForChange/App
```
