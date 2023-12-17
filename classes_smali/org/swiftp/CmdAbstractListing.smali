.class abstract Lorg/swiftp/CmdAbstractListing;
.super Lorg/swiftp/FtpCmd;
.source "CmdAbstractListing.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/swiftp/CmdAbstractListing;

    const-string v0, "CmdAbstractListing"

    sput-object v0, Lorg/swiftp/CmdAbstractListing;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    return-void
.end method


# virtual methods
.method public listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_9

    const-string p1, "500 Internal error, listDirectory on non-directory\r\n"

    return-object p1

    :cond_9
    sget-object v0, Lorg/swiftp/CmdAbstractListing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listing directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_28

    const-string p1, "500 Couldn\'t list directory. Check config and mount status.\r\n"

    return-object p1

    :cond_28
    const-string v1, "Dir len "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v0, :cond_4b

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Lorg/swiftp/CmdAbstractListing;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_4b
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract makeLsString(Ljava/io/File;)Ljava/lang/String;
.end method

.method public sendListing(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Lorg/swiftp/CmdAbstractListing;->TAG:Ljava/lang/String;

    const-string v1, "LIST/NLST done making socket"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "BINARY"

    goto :goto_1c

    :cond_1a
    const-string v1, "ASCII"

    :goto_1c
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "150 Opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode data connection for file list\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    const-string v1, "Sent code 150, sending listing string now"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1, p1}, Lorg/swiftp/SessionThread;->sendViaDataSocket(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_51

    const-string p1, "sendViaDataSocket failure"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    const-string p1, "426 Data socket or network error\r\n"

    return-object p1

    :cond_51
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    const-string p1, "Listing sendViaDataSocket success"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v0, "226 Data transmission OK\r\n"

    invoke-virtual {p1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_64
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    const-string p1, "425 Error opening data socket\r\n"

    return-object p1
.end method
