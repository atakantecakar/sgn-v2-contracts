// Code generated by protoc-gen-sol. DO NOT EDIT.
// source: pool.proto
pragma solidity >=0.5.0;
import "./Pb.sol";

library PbPool {
    using Pb for Pb.Buffer;  // so we can call Pb funcs on Buffer obj

    struct WithdrawMsg {
        uint64 chainid;   // tag: 1
        uint64 seqnum;   // tag: 2
        address receiver;   // tag: 3
        address token;   // tag: 4
        uint256 amount;   // tag: 5
    } // end struct WithdrawMsg

    function decWithdrawMsg(bytes memory raw) internal pure returns (WithdrawMsg memory m) {
        Pb.Buffer memory buf = Pb.fromBytes(raw);

        uint tag;
        Pb.WireType wire;
        while (buf.hasMore()) {
            (tag, wire) = buf.decKey();
            if (false) {} // solidity has no switch/case
            else if (tag == 1) {
                m.chainid = uint64(buf.decVarint());
            }
            else if (tag == 2) {
                m.seqnum = uint64(buf.decVarint());
            }
            else if (tag == 3) {
                m.receiver = Pb._address(buf.decBytes());
            }
            else if (tag == 4) {
                m.token = Pb._address(buf.decBytes());
            }
            else if (tag == 5) {
                m.amount = Pb._uint256(buf.decBytes());
            }
            else { buf.skipValue(wire); } // skip value of unknown tag
        }
    } // end decoder WithdrawMsg

}