.class public Lorg/swiftp/CmdRNFR;
.super Lorg/swiftp/FtpCmd;
.source "CmdRNFR.java"


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdRNFR;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/swiftp/CmdRNFR;->input:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 9
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, v0}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1a

    .line 24
    const-string v1, "550 Invalid name or chroot violation\r\n"

    .line 26
    goto :goto_24

    .line 27
    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_23

    .line 33
    const-string v1, "450 Cannot rename nonexistent file\r\n"

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move-object v1, v2

    .line 37
    :goto_24
    if-eqz v1, :cond_4d

    .line 39
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 41
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    const-string v3, "RNFR failed: "

    .line 54
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 74
    invoke-virtual {v0, v2}, Lorg/swiftp/SessionThread;->setRenameFrom(Ljava/io/File;)V

    .line 77
    goto :goto_59

    .line 78
    :cond_4d
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 80
    const-string v2, "350 Filename noted, now send RNTO\r\n"

    .line 82
    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 87
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->setRenameFrom(Ljava/io/File;)V

    .line 90
    :goto_59
    return-void
.end method
