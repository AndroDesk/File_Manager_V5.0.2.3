.class public Lorg/swiftp/CmdPWD;
.super Lorg/swiftp/FtpCmd;
.source "CmdPWD.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdPWD;

    .line 3
    const-string v0, "CmdPWD"

    .line 5
    sput-object v0, Lorg/swiftp/CmdPWD;->TAG:Ljava/lang/String;

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
.method public run()V
    .registers 5

    .line 1
    sget-object v0, Lorg/swiftp/CmdPWD;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "PWD executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_7
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 10
    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_1c

    .line 21
    :cond_14
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    :goto_1c
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_34

    .line 51
    const-string v0, "/"

    .line 53
    :cond_34
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v3, "257 \""

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "\"\r\n"

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4f} :catch_50

    .line 80
    goto :goto_5c

    .line 81
    :catch_50
    sget-object v0, Lorg/swiftp/CmdPWD;->TAG:Ljava/lang/String;

    .line 83
    const-string v1, "PWD canonicalize"

    .line 85
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 90
    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 93
    :goto_5c
    sget-object v0, Lorg/swiftp/CmdPWD;->TAG:Ljava/lang/String;

    .line 95
    const-string v1, "PWD complete"

    .line 97
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
