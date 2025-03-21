struct CombinedPreview: View {
    var body: some View {
        VStack {
            TittleActivitiesView()
                
            ActivitiesView()
                
        } .ignoresSafeArea()
    }
    
}