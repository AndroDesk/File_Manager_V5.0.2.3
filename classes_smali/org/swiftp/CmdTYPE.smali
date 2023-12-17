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

    const-class v0, Lorg/swiftp/CmdTYPE;

    const-string v0, "CmdTYPE"

    sput-object v0, Lorg/swiftp/CmdTYPE;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    iput-object p2, p0, Lorg/swiftp/CmdTYPE;->input:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    sget-object v0, Lorg/swiftp/CmdTYPE;->TAG:Ljava/lang/String;

    const-string v1, "TYPE executing"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/CmdTYPE;->input:Ljava/lang/String;

    invoke-static {v1}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "I"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "L 8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_3b

    :cond_1e
    const-string v2, "A"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "A N"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_32

    :cond_2f
    const-string v1, "503 Malformed TYPE command\r\n"

    goto :goto_43

    :cond_32
    :goto_32
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->setBinaryMode(Z)V

    const-string v1, "200 ASCII type set\r\n"

    goto :goto_43

    :cond_3b
    :goto_3b
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->setBinaryMode(Z)V

    const-string v1, "200 Binary type set\r\n"

    :goto_43
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v2, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    const-string v1, "TYPE complete"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
