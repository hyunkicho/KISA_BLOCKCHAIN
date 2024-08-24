const { ethers } = require("hardhat");

async function main() {
    const StorageContract = await ethers.deployContract("Storage");

    await StorageContract.waitForDeployment();
    console.log("StorageContract contract deployed to:", await StorageContract.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});