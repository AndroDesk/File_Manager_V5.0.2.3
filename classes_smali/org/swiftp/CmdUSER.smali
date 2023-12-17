.class public Lorg/swiftp/CmdUSER;
.super Lorg/swiftp/FtpCmd;
.source "CmdUSER.java"


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdUSER;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "USER executing"

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lorg/swiftp/CmdUSER;->input:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "[A-Za-z0-9]+"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_23

    .line 28
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 30
    const-string v1, "530 Invalid username\r\n"

    .line 32
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 38
    const-string v2, "331 Send password\r\n"

    .line 40
    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 45
    iget-object v1, v1, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    .line 47
    invoke-virtual {v1, v0}, Lorg/swiftp/Account;->setUsername(Ljava/lang/String;)V

    .line 50
    return-void
.end method
