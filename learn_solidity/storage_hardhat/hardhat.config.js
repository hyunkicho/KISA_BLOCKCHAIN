require("@nomicfoundation/hardhat-toolbox");
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    compilers: [
      {
        version: "0.8.24",
        settings: {
          optimizer: {
            enabled: true,
            runs: 200,
          },
        },
      }
    ],
  },
  paths: {
  },
  defaultNetwork: 'hardhat',
  networks: {
    wemixTest: {
      url: 'https://api.test.wemix.com/',
      accounts: ["개인키"],
      chainId: 1112,
      gasPrice: 111000000000,
    },
    metaTest: {
      url: 'https://api.metadium.com/dev',
      accounts: ["개인키"],
      chainId: 12,
      gasPrice: 111000000000,
    }
  },
};
