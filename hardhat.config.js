require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  defaultNetwork: "ganache",
  networks: {
    ganache: {
      url: "HTTP://127.0.0.1:7545",
      // chainId: 5777,
      // gasPrice:1000000,
      accounts: [
        "62723aeb27708bb5c15c63ebba2b677a9337e39cbb450f6f19e9d707404ea88d",
      ],
    },
  },
};
