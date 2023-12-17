.class public Lorg/swiftp/CmdCWD;
.super Lorg/swiftp/FtpCmd;
.source "CmdCWD.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdCWD;

    .line 3
    const-string v0, "CmdCWD"

    .line 5
    sput-object v0, Lorg/swiftp/CmdCWD;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdCWD;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    sget-object v0, Lorg/swiftp/CmdCWD;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "CWD executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/CmdCWD;->input:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 16
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v1}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_28

    .line 30
    const-string v1, "550 Invalid name or chroot violation\r\n"

    .line 32
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 34
    invoke-virtual {v2, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 37
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    goto :goto_5c

    .line 41
    :cond_28
    :try_start_28
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3a

    .line 51
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 53
    const-string v1, "550 Can\'t CWD to invalid directory\r\n"

    .line 55
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 58
    goto :goto_5c

    .line 59
    :cond_3a
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4d

    .line 65
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 67
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->setWorkingDir(Ljava/io/File;)V

    .line 70
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 72
    const-string v1, "250 CWD successful\r\n"

    .line 74
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 77
    goto :goto_5c

    .line 78
    :cond_4d
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 80
    const-string v1, "550 That path is inaccessible\r\n"

    .line 82
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_54} :catch_55

    .line 85
    goto :goto_5c

    .line 86
    :catch_55
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 88
    const-string v1, "550 Invalid path\r\n"

    .line 90
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 93
    :goto_5c
    sget-object v0, Lorg/swiftp/CmdCWD;->TAG:Ljava/lang/String;

    .line 95
    const-string v1, "CWD complete"

    .line 97
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
