import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {
  
  // -------------------------------------------------------------
  // Challenge 1 add
  public func add(n : Nat, m : Nat) : async Nat {
    return(n + m);
  };
  
  // -------------------------------------------------------------
  // Challenge 2 square
  public func square (n:Nat) : async Nat {
    return (n * n);
  };

  // -------------------------------------------------------------
  // Challenge 3 days_to_seconds
  public func days_to_seconds (n:Nat) : async Nat {
    return (n * 24 * 60 * 60);
  };

  // -------------------------------------------------------------
  // Challenge 4 increment_counter & clear_counter

    // Creatte a mutable variable
  var counter : Nat = 0;
  
    // Reassign a new value
    // counter := 10

  public func increment_counter (n:Nat) : async Nat {
    counter := counter + n;
    // Same as counter += n;
    return (counter);
  };

  public func clear_counter ()  : async Text {
    counter := 0;
    return ("I've reset the counter");
  };

  // -------------------------------------------------------------
  // Challenge 5 divide

    // Division operator : 7 / 3 = 3,5
    // Modulo operator : 7 % 2 = 1
  
  public func divide (n:Nat, m:Nat) : async Bool {
    return (n % m == 0);
  };

  // -------------------------------------------------------------
  // Challenge 6 is_even
  
  public func is_even (n:Nat) : async Bool {
    return (n % 2 == 0);
  };

  // -------------------------------------------------------------
  // Challenge 7 sum_of_array
  
  let array1 : [Nat] = [5,10,17,100];
  public func sum_of_array () : async Nat {
    var newVal1 : Nat = 0;
    for (value1 in array1.vals()) {
      newVal1 := newVal1 + value1;
    };
    return (newVal1);
  };

  // -------------------------------------------------------------
  // Challenge 8 maximum
  
  let array2 : [Nat] = [5,10,17,100];
  public func maximum () : async Nat {
    var newVal2 : Nat = 0;
    for (value2 in array2.vals()) {
      if (value2 > newVal2) {
        newVal2 := value2;
      }
    };
    return (newVal2);
  };

  // -------------------------------------------------------------
  // Challenge 10 selection_sort
  
  //public func selection_ort (a[] : Nat) : async Nat {
  //  for (j = 0; j < n-1; j++){
  //    int iMin = j;
  //    for (i = j+1; i < n; i++){
  //      if (a[i] < a[iMin]) {
  //        iMin = i;
  //      };
  //      if (iMin != j) {
  //        swap (a[j], a[iMin]);
  //      };
  //    };
  //  };
  //};

};