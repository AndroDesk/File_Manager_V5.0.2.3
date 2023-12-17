.class public Lorg/swiftp/CmdNOOP;
.super Lorg/swiftp/FtpCmd;
.source "CmdNOOP.java"


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
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 3
    const-string v1, "200 NOOP ok\r\n"

    .line 5
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 8
    return-void
.end method
