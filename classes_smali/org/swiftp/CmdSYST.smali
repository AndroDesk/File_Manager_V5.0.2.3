.class public Lorg/swiftp/CmdSYST;
.super Lorg/swiftp/FtpCmd;
.source "CmdSYST.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final response:Ljava/lang/String; = "215 UNIX Type: L8\r\n"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdSYST;

    .line 3
    const-string v0, "CmdSYST"

    .line 5
    sput-object v0, Lorg/swiftp/CmdSYST;->TAG:Ljava/lang/String;

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
    .registers 4

    .line 1
    sget-object v0, Lorg/swiftp/CmdSYST;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "SYST executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 10
    const-string v2, "215 UNIX Type: L8\r\n"

    .line 12
    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 15
    const-string v1, "SYST finished"

    .line 17
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
