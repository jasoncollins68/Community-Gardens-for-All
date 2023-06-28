import scala.collection.immutable.{Map, List, Set, Seq} 

object CommunityGardensForAll { 

  // Define constants
  val MIN_REQUIRED_SPACE = 200
  val MAX_REQUIRED_SPACE = 500
  val MIN_NUM_BENEFICIARIES = 10
  val MAX_NUM_BENEFICIARIES = 50

  // Define data structures
  var gardens: Set[Garden] = Set.empty
  var beneficiaries: Set[Beneficiary] = Set.empty

  // Define internal methods
  def isValidGarden(garden: Garden): Boolean = {
    val numBeneficiaries = beneficiariesFor(garden)
    val gardenSize = sizeFor(garden)

    gardenSize >= MIN_REQUIRED_SPACE &&
      gardenSize <= MAX_REQUIRED_SPACE &&
      numBeneficiaries >= MIN_NUM_BENEFICIARIES &&
      numBeneficiaries <= MAX_NUM_BENEFICIARIES
  }

  def beneficiariesFor(garden: Garden): Int = {
    beneficiaries.count(b => b.garden == garden.name)
  }

  def sizeFor(garden: Garden): Int = {
    if (garden.size.isEmpty) {
      0
    } else {
      garden.size.get
    }
  }

  // Define public methods
  def addGarden(name: String, size: Option[Int]): Unit = {
    gardens = gardens + Garden(name, size)
  }

  def addBeneficiary(name: String, garden: String): Unit = {
    beneficiaries = beneficiaries + Beneficiary(name, garden)
  }

  def removeGarden(name: String): Unit = {
    gardens = gardens.filter(g => g.name != name)
  }

  def removeBeneficiary(name: String): Unit = {
    beneficiaries = beneficiaries.filter(b => b.name != name)
  }

  def getValidGardens: List[Garden] = {
    gardens.filter(garden => isValidGarden(garden)).toList
  }

  // Define internal classes
  case class Garden(name: String, size: Option[Int])

  case class Beneficiary(name: String, garden: String)

}