namespace: tutorials_09.hiring

operation:
  name: check_availability

  inputs:
    - address

  python_action:
    script: |
      import random
      rand = random.randint(0, 2)
      vacant = rand != 0
      #print vacant

  outputs:
    - available: ${vacant}

  results:
    - UNAVAILABLE: ${rand == 0}
    - AVAILABLE
