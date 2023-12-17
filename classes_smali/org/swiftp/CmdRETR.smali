.class Lorg/swiftp/CmdRETR;
.super Lorg/swiftp/FtpCmd;
.source "CmdRETR.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private input:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    const-class p1, Lorg/swiftp/CmdRETR;

    const-string p1, "CmdRETR"

    iput-object p1, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lorg/swiftp/CmdRETR;->input:Ljava/lang/String;

    return-void
.end method

.method private progress()Ljava/lang/String;
    .registers 16

    iget-object v0, p0, Lorg/swiftp/CmdRETR;->input:Ljava/lang/String;

    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "550 Invalid name or chroot violation\r\n"

    return-object v0

    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v0, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring RETR for directory"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "550 Can\'t RETR a directory\r\n"

    return-object v0

    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t RETR nonexistent file: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "550 File does not exist\r\n"

    return-object v0

    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v0, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v1, "Failed RETR permission (canRead() is false)"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "550 No read permissions\r\n"

    return-object v0

    :cond_58
    const/4 v1, 0x0

    :try_start_59
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5e} :catch_112
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_10f
    .catchall {:try_start_59 .. :try_end_5e} :catchall_10d

    :try_start_5e
    invoke-static {}, Lorg/swiftp/Defaults;->getDataChunkSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    move-result v3

    if-eqz v3, :cond_fa

    iget-object v3, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v4, "RETR opened data socket"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v4, "150 Sending file\r\n"

    invoke-virtual {v3, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v5, "Transferring in binary mode"

    invoke-static {v3, v5}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-eq v3, v4, :cond_f6

    iget-object v5, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5, v0, v3}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v0, "426 Data socket error\r\n"

    iget-object v1, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v3, "Data socket error"

    invoke-static {v1, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_a1} :catch_10b
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_a1} :catch_109
    .catchall {:try_start_5e .. :try_end_a1} :catchall_107

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_a5
    :try_start_a5
    iget-object v3, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v5, "Transferring in ASCII mode"

    invoke-static {v3, v5}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_ad
    move v5, v3

    :goto_ae
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v4, :cond_f6

    const/4 v7, 0x2

    new-array v7, v7, [B

    const/16 v8, 0xd

    aput-byte v8, v7, v3

    const/16 v9, 0xa

    const/4 v10, 0x1

    aput-byte v9, v7, v10

    move v11, v3

    move v12, v11

    :goto_c2
    if-ge v11, v6, :cond_e8

    aget-byte v13, v0, v11

    if-ne v13, v9, :cond_e5

    iget-object v13, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    sub-int v14, v11, v12

    invoke-virtual {v13, v0, v12, v14}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    if-nez v11, :cond_d9

    if-nez v5, :cond_e4

    iget-object v12, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v12, v7, v10}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    goto :goto_e4

    :cond_d9
    add-int/lit8 v12, v11, -0x1

    aget-byte v12, v0, v12

    if-eq v12, v8, :cond_e4

    iget-object v12, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v12, v7, v10}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    :cond_e4
    :goto_e4
    move v12, v11

    :cond_e5
    add-int/lit8 v11, v11, 0x1

    goto :goto_c2

    :cond_e8
    iget-object v5, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    sub-int/2addr v11, v12

    invoke-virtual {v5, v0, v12, v11}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v0, v6
    :try_end_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_f2} :catch_10b
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_f2} :catch_109
    .catchall {:try_start_a5 .. :try_end_f2} :catchall_107

    if-ne v5, v8, :cond_ad

    move v5, v10

    goto :goto_ae

    :cond_f6
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_118

    :cond_fa
    :try_start_fa
    const-string v0, "425 Error opening socket\r\n"

    iget-object v1, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v3, "Error in initDataSocket()"

    invoke-static {v1, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/io/FileNotFoundException; {:try_start_fa .. :try_end_103} :catch_10b
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_103} :catch_109
    .catchall {:try_start_fa .. :try_end_103} :catchall_107

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_107
    move-exception v0

    goto :goto_11a

    :catch_109
    move-object v1, v2

    goto :goto_10f

    :catch_10b
    move-object v1, v2

    goto :goto_112

    :catchall_10d
    move-exception v0

    goto :goto_119

    :catch_10f
    :goto_10f
    :try_start_10f
    const-string v0, "425 Network error\r\n"

    goto :goto_114

    :catch_112
    :goto_112
    const-string v0, "550 File not found\r\n"
    :try_end_114
    .catchall {:try_start_10f .. :try_end_114} :catchall_10d

    :goto_114
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v0

    :goto_118
    return-object v1

    :goto_119
    move-object v2, v1

    :goto_11a
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v1, "RETR executing"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/CmdRETR;->progress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    if-eqz v0, :cond_18

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_1f

    :cond_18
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v1, "226 Transmission finished\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    :goto_1f
    iget-object v0, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    const-string v1, "RETR done"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
