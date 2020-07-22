
@RestController
class Multiplier {

  @RequestMapping("/multiply")
  public String multiply(@RequestParam("num1") Integer num1, @RequestParam("num2") Integer num2) {
    return String.format("%d * %d = %d", num1, num2, (num1 * num2));
  }


}


