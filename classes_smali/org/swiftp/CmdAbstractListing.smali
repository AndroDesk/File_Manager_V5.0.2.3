.class abstract Lorg/swiftp/CmdAbstractListing;
.super Lorg/swiftp/FtpCmd;
.source "CmdAbstractListing.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdAbstractListing;

    .line 3
    const-string v0, "CmdAbstractListing"

    .line 5
    sput-object v0, Lorg/swiftp/CmdAbstractListing;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    return-void
.end method


# virtual methods
.method public listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    const-string p1, "500 Internal error, listDirectory on non-directory\r\n"

    .line 9
    return-object p1

    .line 10
    :cond_9
    sget-object v0, Lorg/swiftp/CmdAbstractListing;->TAG:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "Listing directory: "

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 35
    move-result-object p2

    .line 36
    if-nez p2, :cond_28

    .line 38
    const-string p1, "500 Couldn\'t list directory. Check config and mount status.\r\n"

    .line 40
    return-object p1

    .line 41
    :cond_28
    const-string v1, "Dir len "

    .line 43
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v1

    .line 47
    array-length v2, p2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    array-length v0, p2

    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_3b
    if-ge v1, v0, :cond_4b

    .line 62
    aget-object v2, p2, v1

    .line 64
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdAbstractListing;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_48

    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_48
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto :goto_3b

    .line 76
    :cond_4b
    const/4 p1, 0x0

    .line 77
    return-object p1
.end method

.method public abstract makeLsString(Ljava/io/File;)Ljava/lang/String;
.end method

.method public sendListing(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 3
    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_64

    .line 9
    sget-object v0, Lorg/swiftp/CmdAbstractListing;->TAG:Ljava/lang/String;

    .line 11
    const-string v1, "LIST/NLST done making socket"

    .line 13
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 18
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1a

    .line 24
    const-string v1, "BINARY"

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const-string v1, "ASCII"

    .line 29
    :goto_1c
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v4, "150 Opening "

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " mode data connection for file list\r\n"

    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 56
    const-string v1, "Sent code 150, sending listing string now"

    .line 58
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 63
    invoke-virtual {v1, p1}, Lorg/swiftp/SessionThread;->sendViaDataSocket(Ljava/lang/String;)Z

    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_51

    .line 69
    const-string p1, "sendViaDataSocket failure"

    .line 71
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 76
    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 79
    const-string p1, "426 Data socket or network error\r\n"

    .line 81
    return-object p1

    .line 82
    :cond_51
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 84
    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 87
    const-string p1, "Listing sendViaDataSocket success"

    .line 89
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 94
    const-string v0, "226 Data transmission OK\r\n"

    .line 96
    invoke-virtual {p1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 99
    const/4 p1, 0x0

    .line 100
    return-object p1

    .line 101
    :cond_64
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 103
    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 106
    const-string p1, "425 Error opening data socket\r\n"

    .line 108
    return-object p1
.end method
