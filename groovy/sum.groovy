@RestController
class SumController {

  @RequestMapping("/sum")
  public String summation(@RequestParam("num1") Integer num1, @RequestParam("num2") Integer num2) {
     return String.format("%d + %d = %d", num1, num2, (num1 + num2));
  }

}


