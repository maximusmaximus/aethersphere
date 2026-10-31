/**
 * Deployment script for Robinhood Chain (Chain ID: 4663)
 * Target RPC: https://rpc.mainnet.chain.robinhood.com
 * Explorer: https://robinhoodchain.blockscout.com
 */

const hre = require("hardhat");

async function main() {
  console.log("🌌 Deploying RobinhoodCompositeNFT on Robinhood Chain (ID: 4663)...");

  const [deployer] = await hre.ethers.getSigners();
  console.log("Deployer account:", deployer.address);

  const RobinhoodCompositeNFT = await hre.ethers.getContractFactory("RobinhoodCompositeNFT");
  const contract = await RobinhoodCompositeNFT.deploy(deployer.address);
  await contract.waitForDeployment();

  const contractAddress = await contract.getAddress();
  console.log("✅ RobinhoodCompositeNFT deployed to:", contractAddress);
  console.log("Explorer link:", `https://robinhoodchain.blockscout.com/address/${contractAddress}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
