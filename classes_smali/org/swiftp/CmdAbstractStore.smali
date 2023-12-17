.class abstract Lorg/swiftp/CmdAbstractStore;
.super Lorg/swiftp/FtpCmd;
.source "CmdAbstractStore.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final message:Ljava/lang/String; = "TEMPLATE!!"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/swiftp/CmdAbstractStore;

    const-string v0, "CmdAbstractStore"

    sput-object v0, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    return-void
.end method


# virtual methods
.method public doStorOrAppe(Ljava/lang/String;Z)V
    .registers 11

    sget-object v0, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STOR/APPE executing with append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    const-string p1, "550 Invalid name or chroot violation\r\n"

    goto/16 :goto_13e

    :cond_2b
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string p1, "451 Can\'t overwrite a directory\r\n"

    goto/16 :goto_13e

    :cond_35
    :try_start_35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    if-nez p2, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_47

    const-string p1, "451 Couldn\'t truncate file\r\n"

    goto/16 :goto_13e

    :cond_47
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/swiftp/Util;->deletedFileNotify(Ljava/lang/String;)V

    :cond_4e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_53} :catch_119

    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    move-result p1

    if-nez p1, :cond_5f

    const-string v3, "425 Couldn\'t open data socket\r\n"

    goto/16 :goto_116

    :cond_5f
    const-string p1, "Data socket ready"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const-string p2, "150 Data socket ready\r\n"

    invoke-virtual {p1, p2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    invoke-static {}, Lorg/swiftp/Defaults;->getDataChunkSize()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {p2}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result p2

    if-eqz p2, :cond_7f

    const-string p2, "Mode is binary"

    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_7f
    const-string p2, "Mode is ascii"

    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    iget-object p2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {p2, p1}, Lorg/swiftp/SessionThread;->receiveFromDataSocket([B)I

    move-result p2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_114

    const/4 v0, -0x1

    if-eq p2, v0, :cond_10c

    if-eqz p2, :cond_109

    const/4 v0, 0x0

    :try_start_93
    iget-object v4, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-virtual {v2, p1, v0, p2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_b9

    :cond_9f
    move v4, v0

    move v5, v4

    :goto_a1
    if-ge v4, p2, :cond_b3

    aget-byte v6, p1, v4

    const/16 v7, 0xd

    if-ne v6, v7, :cond_b0

    sub-int v6, v4, v5

    invoke-virtual {v2, p1, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v5, v4, 0x1

    :cond_b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    :cond_b3
    if-ge v5, p2, :cond_b9

    sub-int/2addr v4, v5

    invoke-virtual {v2, p1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_b9
    :goto_b9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_bc} :catch_bd

    goto :goto_84

    :catch_bd
    move-exception p1

    sget-object p2, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while storing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Stack trace: "

    invoke-static {p2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length p2, p1

    :goto_f6
    if-ge v0, p2, :cond_106

    aget-object v3, p1, v0

    sget-object v4, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f6

    :cond_106
    const-string v3, "451 File IO problem. Device might be full.\r\n"

    goto :goto_116

    :cond_109
    const-string v3, "426 Couldn\'t receive data\r\n"

    goto :goto_116

    :cond_10c
    sget-object p1, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    const-string p2, "Returned from final read"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_116

    :cond_114
    const-string v3, "425 Could not connect data socket\r\n"

    :goto_116
    move-object p1, v3

    move-object v3, v2

    goto :goto_13e

    :catch_119
    :try_start_119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "451 Couldn\'t open file \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" aka \""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" for writing\r\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_13b} :catch_13c

    goto :goto_13e

    :catch_13c
    const-string p1, "451 Couldn\'t open file, nested exception\r\n"

    :goto_13e
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_15f

    sget-object p2, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    const-string v0, "STOR error: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {p2, p1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_16d

    :cond_15f
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const-string p2, "226 Transmission complete\r\n"

    invoke-virtual {p1, p2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/swiftp/Util;->newFileNotify(Ljava/lang/String;)V

    :goto_16d
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    sget-object p1, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    const-string p2, "STOR finished"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
