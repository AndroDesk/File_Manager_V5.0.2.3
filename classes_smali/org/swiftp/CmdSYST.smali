.class public Lorg/swiftp/CmdSYST;
.super Lorg/swiftp/FtpCmd;
.source "CmdSYST.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final response:Ljava/lang/String; = "215 UNIX Type: L8\r\n"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/swiftp/CmdSYST;

    const-string v0, "CmdSYST"

    sput-object v0, Lorg/swiftp/CmdSYST;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    sget-object v0, Lorg/swiftp/CmdSYST;->TAG:Ljava/lang/String;

    const-string v1, "SYST executing"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v2, "215 UNIX Type: L8\r\n"

    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    const-string v1, "SYST finished"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
