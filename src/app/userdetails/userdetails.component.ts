import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

const endpoint = 'http://localhost:9876/api/getUserDetails';
const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json',
  "Access-Control-Allow-Credentials" : "true" })
};

@Component({
  selector: 'app-userdetails',
  templateUrl: './userdetails.component.html',
  styleUrls: ['./userdetails.component.scss']
})
export class UserdetailsComponent implements OnInit {

  response$: Object;
  
  constructor(private http: HttpClient) { }

  ngOnInit() {
  
  }

  onSubmit(id): void {
  
    console.log("Posted Data : "+id);
    const myObj = [{
      id: id
    }];

    const myObjStr = JSON.stringify(myObj);
    console.log("Stringfy Data : "+myObjStr);
  
    this.http.post(endpoint,myObjStr).subscribe(
      data => this.response$ = data ,
      
      error  => console.log("Error", error)
      
      )
  }
}
