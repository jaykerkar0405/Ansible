import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root', // This makes ApiService available globally
})
export class ApiService {
  private apiUrl = 'https://jsonplaceholder.typicode.com/posts'; // Example API URL

  constructor(private http: HttpClient) {}

  getItems(): Observable<any[]> {
    return this.http.get<any[]>(this.apiUrl); // Fetch the items from the API
  }
}
