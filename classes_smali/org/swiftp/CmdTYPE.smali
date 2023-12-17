.class public Lorg/swiftp/CmdTYPE;
.super Lorg/swiftp/FtpCmd;
.source "CmdTYPE.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdTYPE;

    .line 3
    const-string v0, "CmdTYPE"

    .line 5
    sput-object v0, Lorg/swiftp/CmdTYPE;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdTYPE;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    sget-object v0, Lorg/swiftp/CmdTYPE;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "TYPE executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/CmdTYPE;->input:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "I"

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_3b

    .line 22
    const-string v2, "L 8"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1e

    .line 30
    goto :goto_3b

    .line 31
    :cond_1e
    const-string v2, "A"

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_32

    .line 39
    const-string v2, "A N"

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2f

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    const-string v1, "503 Malformed TYPE command\r\n"

    .line 50
    goto :goto_43

    .line 51
    :cond_32
    :goto_32
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->setBinaryMode(Z)V

    .line 57
    const-string v1, "200 ASCII type set\r\n"

    .line 59
    goto :goto_43

    .line 60
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->setBinaryMode(Z)V

    .line 66
    const-string v1, "200 Binary type set\r\n"

    .line 68
    :goto_43
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 70
    invoke-virtual {v2, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 73
    const-string v1, "TYPE complete"

    .line 75
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
