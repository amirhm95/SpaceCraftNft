const SpaceCraftNft = artifacts.require("SpaceCraftNft");

module.exports = function (deployer) {
  deployer.deploy(SpaceCraftNft);
};
