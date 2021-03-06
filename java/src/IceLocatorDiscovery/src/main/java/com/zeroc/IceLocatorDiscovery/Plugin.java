// **********************************************************************
//
// Copyright (c) 2003-2018 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

package com.zeroc.IceLocatorDiscovery;

import java.util.List;

public interface Plugin extends com.zeroc.Ice.Plugin
{
    List<com.zeroc.Ice.LocatorPrx> getLocators(String instanceName, int waitTime);
}
