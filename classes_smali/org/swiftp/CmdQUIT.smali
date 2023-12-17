.class public Lorg/swiftp/CmdQUIT;
.super Lorg/swiftp/FtpCmd;
.source "CmdQUIT.java"


# static fields
.field public static final message:Ljava/lang/String; = "TEMPLATE!!"


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "QUITting"

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 16
    const-string v1, "221 Goodbye\r\n"

    .line 18
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 23
    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 26
    return-void
.end method
