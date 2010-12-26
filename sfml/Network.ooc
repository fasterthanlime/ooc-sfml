import sfml/System

include SFML/Network
use csfml-network

SocketStatus: cover from sfSocketStatus {
    done: extern(sfSocketDone) static Int
    notReady: extern(sfSocketNotReady) static Int
    disconnected: extern(sfSocketDisconnected) static Int
    error: extern(sfSocketError) static Int
}

UdpSocket: cover from sfUdpSocket* {
    new: extern(sfUdpSocket_Create) static func -> UdpSocket
    destroy: extern(sfUdpSocket_Destroy) func
    setBlocking: extern(sfUdpSocket_SetBlocking) func (blocking: Bool)
    blocking?: extern(sfUdpSocket_IsBlocking) func -> Bool
    getLocalPort: extern(sfUdpSocket_GetLocalPort) func -> UShort
    bind: extern(sfUdpSocket_Bind) func (port: UShort) -> Bool
    unbind: extern(sfUdpSocket_Unbind) func -> Bool
    send: extern(sfUdpSocket_Send) func (data: Char*, size: SizeT, address: IPAddress, port: UShort) -> SocketStatus
    receive: extern(sfUdpSocket_Receive) func (data: Char*, maxSize: SizeT, sizeReceived: SizeT*, address: IPAddress, port: UShort*) -> SocketStatus
    sendPacket: extern(sfUdpSocket_SendPacket) func (packet: Packet, address: IPAddress, port: UShort) -> SocketStatus
    receivePacket: extern(sfUdpSocket_ReceivePacket) func (packet: Packet, address: IPAddress, port: UShort*) -> SocketStatus
}

TcpSocket: cover from sfTcpSocket* {
    new: extern(sfTcpSocket_Create) static func -> TcpSocket
    destroy: extern(sfTcpSocket_Destroy) func
    setBlocking: extern(sfTcpSocket_SetBlocking) func (blocking: Bool)
    blocking?: extern(sfTcpSocket_IsBlocking) func -> Bool
    getLocalPort: extern(sfTcpSocket_GetLocalPort) func -> UShort
    getRemotePort: extern(sfTcpSocket_GetRemotePort) func -> UShort
    connect: extern(sfTcpSocket_Connect) func (port: UShort, hostAddress: IPAddress, timeout: Float) -> SocketStatus
    disconnect: extern(sfTcpSocket_Disconnect) func
    send: extern(sfTcpSocket_Send) func (data: Char*, size: SizeT) -> SocketStatus
    receive: extern(sfTcpSocket_Receive) func (data: Char*, maxSize: SizeT, sizeReceived: SizeT*) -> SocketStatus
    sendPacket: extern(sfTcpSocket_SendPacket) func (packet: Packet) -> SocketStatus
    receivePacket: extern(sfTcpSocket_ReceivePacket) func (packet: Packet) -> SocketStatus
}

TcpListener: cover from sfTcpListener* {
    new: extern(sfTcpListener_Create) static func -> TcpListener
    destroy: extern(sfTcpListener_Destroy) func
    setBlocking: extern(sfTcpListener_SetBlocking) func(blocking : Bool)
    blocking?: extern(sfTcpListener_IsBlocking) func -> Bool
    listen: extern(sfTcpListener_Listen) func(port : UShort) -> SocketStatus
    accept: extern(sfTcpListener_Accept) func(connected: TcpSocket*) -> SocketStatus
}

SocketSelector: cover from sfSocketSelector* {
    new: extern(sfSocketSelector_Create) static func -> SocketSelector
    copy: extern(sfSocketSelector_Copy) func -> SocketSelector
    destroy: extern(sfSocketSelector_Destroy) func
    add: extern(sfSocketSelector_AddTcpSocket) func ~tcpsocket(socket : TcpSocket)
    add: extern(sfSocketSelector_AddTcpListener) func ~tcplistener(listener : TcpListener)
    add: extern(sfSocketSelector_AddUdpSocket) func ~udpsocket(socket : UdpSocket)
    remove: extern(sfSocketSelector_RemoveTcpSocket) func ~tcpsocket(socket : TcpSocket)
    remove: extern(sfSocketSelector_RemoveTcpListener) func ~tcplistener(listener : TcpListener)
    remove: extern(sfSocketSelector_RemoveUdpSocket) func ~udpsocket(socket : UdpSocket)
    clear: extern(sfSocketSelector_Clear) func
    wait: extern(sfSocketSelector_Wait) func (timeout: Float) -> UInt
    ready?: extern(sfSocketSelector_IsTcpSocketReady) func ~tcpsocket(socket : TcpSocket) -> Bool
    ready?: extern(sfSocketSelector_IsTcpListenerReady) func ~tcplistener(listener : TcpListener) -> Bool
    ready?: extern(sfSocketSelector_IsUdpSocketReady) func ~udpsocket(socket : UdpSocket) -> Bool
}

IPAddress: cover from sfIpAddress {
    new: extern(IPAddress_FromString) static func ~string (string: Char*) -> IPAddress
    new: extern(IPAddress_FromBytes) static func ~bytes (byte0: UInt8, byte1: UInt8, byte2: UInt8, byte3: UInt8) -> IPAddress
    new: extern(IPAddress_FromInteger) static func ~integer (address: UInt32) -> IPAddress
    toString: extern(IPAddress_ToString) func (string: Char*)
    toInteger: extern(IPAddress_ToInteger) func -> UInt32
    getLocalAddress: extern(IPAddress_GetLocalAddress) static func -> IPAddress
    getPublicAddress: extern(IPAddress_GetPublicAddress) static func (timeout: Float) -> IPAddress
    localHost: extern(IPAddress_LocalHost) static func -> IPAddress
    none: extern(IPAddress_None) static func -> IPAddress
}

WChar: cover from wchar_t

Packet: cover from sfPacket* {
    new: extern(sfPacket_Create) static func -> Packet
    copy: extern(sfPacket_Copy) func -> Packet
    destroy: extern(sfPacket_Destroy) func
    append: extern(sfPacket_Append) func (data: Void*, sizeInBytes: SizeT)
    clear: extern(sfPacket_Clear) func
    getData: extern(sfPacket_GetData) func -> Char*
    getDataSize: extern(sfPacket_GetDataSize) func -> SizeT
    endOfPacket: extern(sfPacket_EndOfPacket) func -> Bool
    canRead: extern(sfPacket_CanRead) func -> Bool
    readBool: extern(sfPacket_ReadBool) func -> Bool
    readInt8: extern(sfPacket_ReadInt8) func -> Int8
    readUint8: extern(sfPacket_ReadUint8) func -> UInt8
    readInt16: extern(sfPacket_ReadInt16) func -> Int16
    readUint16: extern(sfPacket_ReadUint16) func -> UInt16
    readInt32: extern(sfPacket_ReadInt32) func -> Int32
    readUint32: extern(sfPacket_ReadUint32) func -> UInt32
    readFloat: extern(sfPacket_ReadFloat) func -> Float
    readDouble: extern(sfPacket_ReadDouble) func -> Double
    readString: extern(sfPacket_ReadString) func (string: Char*)
    readWideString: extern(sfPacket_ReadWideString) func (string: WChar*)
    writeBool: extern(sfPacket_WriteBool) func (arg1: Bool)
    writeInt8: extern(sfPacket_WriteInt8) func (arg1: Int8)
    writeUint8: extern(sfPacket_WriteUint8) func (arg1: UInt8)
    writeInt16: extern(sfPacket_WriteInt16) func (arg1: Int16)
    writeUint16: extern(sfPacket_WriteUint16) func (arg1: UInt16)
    writeInt32: extern(sfPacket_WriteInt32) func (arg1: Int32)
    writeUint32: extern(sfPacket_WriteUint32) func (arg1: UInt32)
    writeFloat: extern(sfPacket_WriteFloat) func (arg1: Float)
    writeDouble: extern(sfPacket_WriteDouble) func (arg1: Double)
    writeString: extern(sfPacket_WriteString) func (string: Char*)
    writeWideString: extern(sfPacket_WriteWideString) func (string: WChar*)
}
