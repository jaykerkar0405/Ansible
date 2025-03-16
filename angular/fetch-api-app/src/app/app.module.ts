import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http'; // Import HttpClientModule

import { AppComponent } from './app.component';
import { ItemsComponent } from './items/items.component'; // Import ItemsComponent

@NgModule({
  declarations: [AppComponent, ItemsComponent], // Declare your components
  imports: [BrowserModule, HttpClientModule],    // Import HttpClientModule here
  bootstrap: [AppComponent]
})
export class AppModule {}
