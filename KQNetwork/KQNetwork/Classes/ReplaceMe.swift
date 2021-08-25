
public class Services{
    private init(){}
    public static func doGreatings(greeting: String)->String{
        print("Greeting \(greeting)")
        return "Answer: Walikum slaam! Hello How are you."
    }
}
public class Analytics {
    public init() {}
    
    public func log(message: String) {
        print("Log message: ", message)
    }
}
