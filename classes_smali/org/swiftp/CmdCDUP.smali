.class public Lorg/swiftp/CmdCDUP;
.super Lorg/swiftp/FtpCmd;
.source "CmdCDUP.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    const-class p1, Lorg/swiftp/CmdCDUP;

    .line 6
    const-string p1, "CmdCDUP"

    .line 8
    iput-object p1, p0, Lorg/swiftp/CmdCDUP;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/swiftp/CmdCDUP;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "CDUP executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 10
    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_16

    .line 20
    const-string v0, "550 Current dir cannot find parent\r\n"

    .line 22
    goto :goto_3e

    .line 23
    :cond_16
    invoke-virtual {p0, v0}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1f

    .line 29
    const-string v0, "550 Invalid name or chroot violation\r\n"

    .line 31
    goto :goto_3e

    .line 32
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2c

    .line 42
    const-string v0, "550 Can\'t CWD to invalid directory\r\n"

    .line 44
    goto :goto_3e

    .line 45
    :cond_2c
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_39

    .line 51
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 53
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->setWorkingDir(Ljava/io/File;)V

    .line 56
    const/4 v0, 0x0

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    const-string v0, "550 That path is inaccessible\r\n"
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_3e

    .line 61
    :catch_3c
    const-string v0, "550 Invalid path\r\n"

    .line 63
    :goto_3e
    if-eqz v0, :cond_5c

    .line 65
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 67
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lorg/swiftp/CmdCDUP;->TAG:Ljava/lang/String;

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v3, "CDUP error: "

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    goto :goto_6a

    .line 93
    :cond_5c
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 95
    const-string v1, "200 CDUP successful\r\n"

    .line 97
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/swiftp/CmdCDUP;->TAG:Ljava/lang/String;

    .line 102
    const-string v1, "CDUP success"

    .line 104
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_6a
    return-void
.end method
