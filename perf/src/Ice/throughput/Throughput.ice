// **********************************************************************
//
// Copyright (c) 2003-2005 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

#ifndef THROUGHPUT_ICE
#define THROUGHPUT_ICE

module Demo
{

sequence<byte> ByteSeq;
const int ByteSeqSize = 500000;

sequence<string> StringSeq;
const int StringSeqSize = 50000;
const int LongStringSeqSize = 5000;

struct StringDouble
{
    string s;
    double d;
};
sequence<StringDouble> StringDoubleSeq;
const int StringDoubleSeqSize = 50000;

interface Throughput
{
    void sendByteSeq(ByteSeq seq);
    ByteSeq recvByteSeq();
    ByteSeq echoByteSeq(ByteSeq seq);

    void sendStringSeq(StringSeq seq);
    StringSeq recvStringSeq();
    StringSeq echoStringSeq(StringSeq seq);

    void sendStructSeq(StringDoubleSeq seq);
    StringDoubleSeq recvStructSeq();
    StringDoubleSeq echoStructSeq(StringDoubleSeq seq);

    idempotent void shutdown();
};

};

#endif
