public with sharing class Vehicle {
    
    public enum Medium {LAND, AIR, WATER}
    
    private u32 Speed {get;}
    
    private String Name {get;}

    public u32 Occupants {get;}

    public final Integer Capacity {get; set {
        // if(value >= 1) { 
        //     Capacity = value;
        // }
        // else {
        //     Capacity = 1;
        // }
        Capacity = value >= 1 ? value : 1;
    }}

    public List<Medium> Media = new List<Medium>();
    
    public Vehicle() {
        this.Speed = 65;
        this.Name = 'Accord';
        this.Occupants = 2;
        this.Capacity = 5;
    }

    public Vehicle(u32 Speed, String Name, u32 Occupants, Integer Capacity) {
        this.Speed = Speed;
        this.Name = Name;
        this.Occupants = Occupants;
        this.Capacity = Capacity;
    }

    public void Accelerate(Integer speed) {
        this.Speed += speed;
    }

    public abstract void Turn();

    public String ToString() {
        return Speed + ' ' + Media + ' ' + Name + ' ' + Occupants;
    }


}