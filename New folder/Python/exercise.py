
from abc import ABCMeta, abstractmethod

class Operation(metaclass=ABCMeta):
    
    @abstractmethod
    def addition(self, a: int, b: int) -> int:
        pass
    
    @abstractmethod
    def subtraction(self, a: int, b: int) -> int:
        pass
    
    
class BasicMathOne(Operation):
    
    def addition(self, a: int, b: int) -> int:
        return a + b

    def subtraction(self, a: int, b: int) -> int:
        pass

class BasicMathTwo(BasicMathOne):
    
    def multiplication(self, a: int, b: int) -> int:
        
        for _ in range(a):
            
            yield self.addition(b, b)
            

    def division(self, a: int, b: int) -> int:
        pass
    
              
x = BasicMathTwo()
y = x.multiplication(2, 8)

print(next(y))
print(y.__next__())