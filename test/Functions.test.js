const { assert } = require('chai');
const Web3  = require('web3');

const Functions = artifacts.require("Functions");

// Chai
require('chai')
    .use(require('chai-as-promised'))
    .should()

// Helper to convert tokens to wei
// Note, although we are not using ether, we can still pass it in, as we are using 18 decimals, 
// just as in either
function tokens(numberOfTokens) {
    return Web3.utils.toWei(numberOfTokens, 'ether');
}    

contract('Functions', (accounts) => {
    let functions
    console.log(`accounts:\n ${accounts}`);

    before(async () => {

        functions = await Functions.new();
        
    })
    
    // Functions
    describe('setValue() and getValue()', async () => {
        it('should set and get value', async () => {
            await functions.setValue(250);
            const value = await functions.getValue();
            assert.equal(value, 250)
        })

    })    


});