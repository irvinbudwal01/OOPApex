public with sharing class Car extends Vehicle {

    private Integer SteeringRotation;

    private Integer TireRotation {get; set {
        this.TireRotation = -90 <= value && value >= 90 ? value : 0; 
    }}

    private Integer Gear {get;}

    public Car() {
        super();
        this.SteeringRotation = 0;
        this.TireRotation = 0;
        this.Media.add(MEDIUM.LAND);
    }

    public Car(u32 Speed, String Name, u32 Occupants, Integer Capacity) {
        this.Speed = Speed;
        this.Name = Name;
        this.Occupants = Occupants;
        this.Capacity = Capacity;
        this.SteeringRotation = 0;
        this.TireRotation = 0;
        this.Media.add(MEDIUM.LAND);
    }

    public setSteeringRotation(Integer steering) {
        this.SteeringRotation = -1440 <= steering && steering >= 1440 ? steering : 0;
    }

    public override void Turn(Integer deg) {
        this.SteeringRotation += deg;
        this.TireRotation += deg/16;
    }

    public override void Accelerate(Integer speed) {
        super.Accelerate(speed);
        Gear = (Integer)Math.ceil(0.4444 * (Math.sqrt(Speed)));
    }

}