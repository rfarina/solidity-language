const SolidityTypes = artifacts.require("SolidityTypes");
const Functions = artifacts.require("Functions");

module.exports = function (deployer) {
  deployer.deploy(SolidityTypes);
  deployer.deploy(Functions);
};
