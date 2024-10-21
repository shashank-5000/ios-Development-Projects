import SwiftUI


struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("imagee"
            )
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                Text("WeatherApp")
                    .font(/*@START_MENU_TOKEN@*/Font/*@END_MENU_TOKEN@*/.largeTitle)
                
                    
                    
                
                
                
                
                VStack{
                    
                    HStack(spacing:20) {
                        DayForecast(day: "Mon", isRainy: false, cloudy: false, high: 75, low: 58)
                        
                        DayForecast(day: "Tue", isRainy: true, cloudy: false, high: 48, low: 32)
                    }
                    HStack(spacing:20) {
                        DayForecast(day: "Wed", isRainy: false, cloudy: true, high: 64, low: 49)
                        
                        DayForecast(day: "Thu", isRainy: false, cloudy: false, high: 82, low: 62)
                        
                    }
                    HStack(spacing:20) {
                        DayForecast(day: "Fri", isRainy: false, cloudy: false, high: 79, low: 58)
                        
                        DayForecast(day: "Sat", isRainy: false, cloudy: true, high: 66, low: 52)
                    }
                    HStack(spacing:20) {
                        DayForecast(day: "Sun", isRainy: true, cloudy: false, high: 45, low: 32)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let cloudy:Bool?
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        }else if cloudy==true{
            return "cloud.sun.fill"
            
        }
        else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        }else if cloudy==true{
            return Color.gray
        }
        else {
            return Color.orange
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            Text("High: \(high)")
            Text("Low: \(low)")
        }
        .padding()
    }
}
