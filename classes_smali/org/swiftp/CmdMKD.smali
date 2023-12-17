.class public Lorg/swiftp/CmdMKD;
.super Lorg/swiftp/FtpCmd;
.source "CmdMKD.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdMKD;

    .line 3
    const-string v0, "CmdMKD"

    .line 5
    sput-object v0, Lorg/swiftp/CmdMKD;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdMKD;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    sget-object v0, Lorg/swiftp/CmdMKD;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "MKD executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/CmdMKD;->input:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ge v2, v3, :cond_17

    .line 21
    const-string v1, "550 Invalid name\r\n"

    .line 23
    goto :goto_3d

    .line 24
    :cond_17
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 26
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2, v1}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2a

    .line 40
    const-string v1, "550 Invalid name or chroot violation\r\n"

    .line 42
    goto :goto_3d

    .line 43
    :cond_2a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_33

    .line 49
    const-string v1, "550 Already exists\r\n"

    .line 51
    goto :goto_3d

    .line 52
    :cond_33
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3c

    .line 58
    const-string v1, "550 Error making directory (permissions?)\r\n"

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    const/4 v1, 0x0

    .line 62
    :goto_3d
    if-eqz v1, :cond_5d

    .line 64
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 66
    invoke-virtual {v2, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v3, "MKD error: "

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    goto :goto_64

    .line 94
    :cond_5d
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 96
    const-string v2, "250 Directory created\r\n"

    .line 98
    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 101
    :goto_64
    const-string v1, "MKD complete"

    .line 103
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
