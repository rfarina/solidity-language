const SolidityTypes = artifacts.require("SolidityTypes");
const Functions = artifacts.require("Functions");
const ProveReference = artifacts.require("ProveReference");
const Transfers = artifacts.require("Transfers");


module.exports = function (deployer) {
  deployer.deploy(SolidityTypes);
  deployer.deploy(Functions);

  // Deploy ProveReference
  await deployer.deploy(ProveReference, token.address);

  // Deploy Transfers
  const transfers = await deployer.deploy(Transfers, accounts[0]);

  // Initialize contract with 1,000 ether
  // Note: This tx is processed by the fallback() function
  transfers.sendTransaction({from: accounts[1], value: '5000000000000000000' })
};
