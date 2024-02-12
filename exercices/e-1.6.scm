Because of the evaluation the new sqrt procedure will be stucked at an infinite loop. Since new-if isn't a special form, all evaluation occurs BEFORE the evaluation of new-if, and then it's calling sqrt procedure an infite loop will be created.

To run this procedure, we mmust use normal evaluation.
