.class public Lorg/swiftp/CmdRNTO;
.super Lorg/swiftp/FtpCmd;
.source "CmdRNTO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdRNTO;

    .line 3
    const-string v0, "CmdRNTO"

    .line 5
    sput-object v0, Lorg/swiftp/CmdRNTO;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdRNTO;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/swiftp/CmdRNTO;->input:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/swiftp/CmdRNTO;->TAG:Ljava/lang/String;

    .line 9
    const-string v2, "RNTO executing\r\n"

    .line 11
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v3, "param: "

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 36
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v0}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 43
    move-result-object v0

    .line 44
    const-string v2, "RNTO parsed: "

    .line 46
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v0}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x0

    .line 69
    if-eqz v2, :cond_49

    .line 71
    const-string v0, "550 Invalid name or chroot violation\r\n"

    .line 73
    goto :goto_5e

    .line 74
    :cond_49
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 76
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getRenameFrom()Ljava/io/File;

    .line 79
    move-result-object v2

    .line 80
    if-nez v2, :cond_54

    .line 82
    const-string v0, "550 Rename error, maybe RNFR not sent\r\n"

    .line 84
    goto :goto_5e

    .line 85
    :cond_54
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5d

    .line 91
    const-string v0, "550 Error during rename operation\r\n"

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    move-object v0, v3

    .line 95
    :goto_5e
    if-eqz v0, :cond_7e

    .line 97
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 99
    invoke-virtual {v2, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v4, "RNFR failed: "

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    goto :goto_85

    .line 127
    :cond_7e
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 129
    const-string v2, "250 rename successful\r\n"

    .line 131
    invoke-virtual {v0, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 134
    :goto_85
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 136
    invoke-virtual {v0, v3}, Lorg/swiftp/SessionThread;->setRenameFrom(Ljava/io/File;)V

    .line 139
    const-string v0, "RNTO finished"

    .line 141
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
