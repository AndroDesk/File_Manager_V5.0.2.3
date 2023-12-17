.class public Lorg/swiftp/CmdPASV;
.super Lorg/swiftp/FtpCmd;
.source "CmdPASV.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdPASV;

    .line 3
    const-string v0, "CmdPASV"

    .line 5
    sput-object v0, Lorg/swiftp/CmdPASV;->TAG:Ljava/lang/String;

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
    .registers 7

    .line 1
    sget-object v0, Lorg/swiftp/CmdPASV;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "PASV running"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 10
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->onPasv()I

    .line 13
    move-result v1

    .line 14
    const-string v2, "502 Couldn\'t open a port\r\n"

    .line 16
    if-nez v1, :cond_1c

    .line 18
    const-string v1, "Couldn\'t open a port for PASV"

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 25
    invoke-virtual {v0, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 28
    return-void

    .line 29
    :cond_1c
    iget-object v3, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 31
    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->getDataSocketPasvIp()Ljava/net/InetAddress;

    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_2f

    .line 37
    const-string v1, "PASV IP string invalid"

    .line 39
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 44
    invoke-virtual {v0, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 47
    return-void

    .line 48
    :cond_2f
    const-string v4, "PASV sending IP: "

    .line 50
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    invoke-static {v0, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x1

    .line 69
    if-ge v1, v4, :cond_51

    .line 71
    const-string v1, "PASV port number invalid"

    .line 73
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 78
    invoke-virtual {v0, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 81
    return-void

    .line 82
    :cond_51
    const-string v2, "227 Entering Passive Mode ("

    .line 84
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    const/16 v4, 0x2e

    .line 94
    const/16 v5, 0x2c

    .line 96
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v3, ","

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    div-int/lit16 v4, v1, 0x100

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    rem-int/lit16 v1, v1, 0x100

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ").\r\n"

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 132
    invoke-virtual {v2, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v3, "PASV completed, sent: "

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method
