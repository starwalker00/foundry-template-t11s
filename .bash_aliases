alias currentNumber='forge script script/Counter.interact.s.sol:CurrentNumber --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast'
alias incrementNumber='forge script script/Counter.interact.s.sol:IncrementNumber --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast'
alias setNumber='forge script script/Counter.interact.s.sol:SetNumber --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast'

function setNumberParam {
    export UINT_VALUE=$1
    forge script script/Counter.interact.s.sol:SetNumberParam --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast
}
