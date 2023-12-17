.class public Lorg/swiftp/CmdDELE;
.super Lorg/swiftp/FtpCmd;
.source "CmdDELE.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdDELE;

    .line 3
    const-string v0, "CmdDELE"

    .line 5
    sput-object v0, Lorg/swiftp/CmdDELE;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdDELE;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    sget-object v0, Lorg/swiftp/CmdDELE;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "DELE executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/CmdDELE;->input:Ljava/lang/String;

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
    if-eqz v2, :cond_20

    .line 30
    const-string v2, "550 Invalid name or chroot violation\r\n"

    .line 32
    goto :goto_33

    .line 33
    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_29

    .line 39
    const-string v2, "550 Can\'t DELE a directory\r\n"

    .line 41
    goto :goto_33

    .line 42
    :cond_29
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_32

    .line 48
    const-string v2, "450 Error deleting file\r\n"

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    const/4 v2, 0x0

    .line 52
    :goto_33
    if-eqz v2, :cond_53

    .line 54
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 56
    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "DELE failed: "

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    goto :goto_61

    .line 84
    :cond_53
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 86
    const-string v3, "250 File successfully deleted\r\n"

    .line 88
    invoke-virtual {v2, v3}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lorg/swiftp/Util;->deletedFileNotify(Ljava/lang/String;)V

    .line 98
    :goto_61
    const-string v1, "DELE finished"

    .line 100
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method
