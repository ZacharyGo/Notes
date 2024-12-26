# parent class

class Ball:
    def __init__(self):
        print("Ball is ready")

    def get_class_name(self):
        print("Bird")

    def play(self):
        print("Lets play ball")


class Basketball(Ball):
    def __init__(self):
        # call super() function
        super().__init__()
        print("Basketball ball is ready")

    def get_class_name(self):
        print("BasketballBall")

    def play(self):
        print("Lets play basketball")

#random_ball 

mikasa = Basketball()
mikasa.get_class_name()
mikasa.play()