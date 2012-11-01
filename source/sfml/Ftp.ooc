import sfml/Network
include SFML/Network/Ftp
use sfml

FtpTransferMode : cover from sfFtpTransferMode {
    binary: extern(sfFtpBinary) static Int
    ascii: extern(sfFtpAscii) static Int
    ebcdic: extern(sfFtpEbcdic) static Int
}

FtpStatus : cover from sfFtpStatus {
    restartMarkerReplay: extern(sfFtpRestartMarkerReplay) static Int
    serviceReadySoon: extern(sfFtpServiceReadySoon) static Int
    dataConnectionAlreadyOpened: extern(sfFtpDataConnectionAlreadyopened) static Int
    openingDataConnection: extern(sfFtpOpeningDataConnection) static Int
    
    ok: extern(sfFtpOk) static Int
    pointlessCommand: extern(sfFtpPointlessCommand) static Int
    systemStatus: extern(sfFtpSystemStatus) static Int
    directoryStatus: extern(sfFtpDirectoryStatus) static Int
    fileStatus: extern(sfFtpFileStatus) static Int
    helpMessage: extern(sfFtpHelpMessage) static Int
    systemType: extern(sfFtpSystemType) static Int
    serviceReady: extern(sfFtpServiceReady) static Int
    closingConnection: extern(sfFtpClosingConnection) static Int
    dataConnectionOpened: extern(sfFtpDataConnectionOpened) static Int
    closingDataConnection: extern(sfFtpClosingDataConnection) static Int
    enteringPassiveMode: extern(sfFtpEnteringPassiveMode) static Int
    loggedIn: extern(sfFtpLoggedIn) static Int
    fileActionOk: extern(sfFtpFileActionOk) static Int
    directoryOk: extern(sfFtpDirectoryOk) static Int
    
    needPassword: extern(sfFtpNeedPassword) static Int
    needAccountToLogIn: extern(sfFtpNeedAccountToLogIn) static Int
    needInformation: extern(sfFtpNeedInformation) static Int
    
    serviceUnavailable: extern(sfFtpServiceUnavailable) static Int
    dataConnectionUnavailable: extern(sfFtpDataConnectionUnavailable) static Int
    transferAborted: extern(sfFtpTransferAborted) static Int
    actionAborted: extern(sfFtpActionAborted) static Int
    localError: extern(sfFtpLocalError) static Int
    insufficientStorageSpace: extern(sfFtpInsufficientStorageSpace) static Int
    
    commandUnknown: extern(sfFtpCommandUnknown) static Int
    parametersUnknown: extern(sfFtpParametersUnknown) static Int
    commandNotImplemented: extern(sfFtpCommandNotImplemented) static Int
    badCommandSequence: extern(sfFtpBadCommandSequence) static Int
    parameterNotImplemented: extern(sfFtpParameterNotImplemented) static Int
    notLoggedIn: extern(sfFtpNotLoggedIn) static Int
    needAccountToStore: extern(sfFtpNeedAccountToStore) static Int
    fileUnavailable: extern(sfFtpFileUnavailable) static Int
    pageTypeUnknown: extern(sfFtpPageTypeUnknown) static Int
    notEnoughMemory: extern(sfFtpNotEnoughMemory) static Int
    filenameNotAllowed: extern(sfFtpFilenameNotAllowed) static Int
    
    invalidResponse: extern(sfFtpInvalidResponse) static Int
    connectionFailed: extern(sfFtpConnectionFailed) static Int
    connectionClosed: extern(sfFtpConnectionClosed) static Int
    invalidFile: extern(sfFtpInvalidFile) static Int
}

FtpListingResponse : cover from sfFtpListingResponse* {
    destroy: extern(sfFtpListingResponse_Destroy) func
    ok?: extern(sfFtpListingResponse_IsOk) func -> Bool
    getStatus: extern(sfFtpListingResponse_GetStatus) func -> FtpStatus
    getMessage: extern(sfFtpListingResponse_GetMessage) func -> Char*
    getCount: extern(sfFtpListingResponse_GetCount) func -> SizeT
    getFilename: extern(sfFtpListingResponse_GetFilename) func(index : SizeT) -> Char*
}

FtpDirectoryResponse : cover from sfFtpDirectoryResponse* {
    destroy: extern(sfFtpDirectoryResponse_Destroy) func
    ok?: extern(sfFtpDirectoryResponse_IsOk) func -> Bool
    getStatus: extern(sfFtpDirectoryResponse_GetStatus) func -> FtpStatus
    getMessage: extern(sfFtpDirectoryResponse_GetMessage) func -> Char*
    getDirectory: extern(sfFtpDirectoryResponse_GetDirectory) func -> Char*
}

FtpResponse : cover from sfFtpResponse* {
    destroy: extern(sfFtpResponse_Destroy) func
    ok?: extern(sfFtpResponse_IsOk) func -> Bool
    getStatus: extern(sfFtpResponse_GetStatus) func -> FtpStatus
    getMessage: extern(sfFtpResponse_GetMessage) func -> Char*
}

Ftp : cover from sfFtp* {
    new: extern(sfFtp_Create) static func -> Ftp
    destroy: extern(sfFtp_Destroy) func
    connect: extern(sfFtp_Connect) func(server : IPAddress, port : UShort, timeout : Float) -> FtpResponse
    loginAnonymous: extern(sfFtp_LoginAnonymous) func -> FtpResponse
    login: extern(sfFtp_Login) func(name,password : Char*) -> FtpResponse
    disconnect: extern(sfFtp_Disconnect) func -> FtpResponse
    keepAlive: extern(sfFtp_KeepAlive) func -> FtpResponse
    getWorkingDirectory: extern(sfFtp_GetWorkingDirectory) func -> FtpDirectoryResponse
    getDirectoryListing: extern(sfFtp_GetDirectoryListing) func(directory : Char*) -> FtpListingResponse
    changeDirectory: extern(sfFtp_ChangeDirectory) func(directory : Char*) -> FtpResponse
    parentDirectory: extern(sfFtp_ParentDirectory) func -> FtpResponse
    createDirectory: extern(sfFtp_CreateDirectory) func(directory : Char*) -> FtpResponse
    renameFile: extern(sfFtp_RenameFile) func(file,newName : Char*) -> FtpResponse
    deleteFile: extern(sfFtp_DeleteFile) func(file : Char*) -> FtpResponse
    download: extern(sfFtp_Download) func(distantFile,destPath : Char*, mode : FtpTranserMode) -> FtpResponse
}
