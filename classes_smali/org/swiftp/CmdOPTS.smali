.class public Lorg/swiftp/CmdOPTS;
.super Lorg/swiftp/FtpCmd;
.source "CmdOPTS.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final message:Ljava/lang/String; = "TEMPLATE!!"


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdOPTS;

    .line 3
    const-string v0, "CmdOPTS"

    .line 5
    sput-object v0, Lorg/swiftp/CmdOPTS;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdOPTS;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/swiftp/CmdOPTS;->input:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    sget-object v0, Lorg/swiftp/CmdOPTS;->TAG:Ljava/lang/String;

    .line 11
    const-string v1, "Couldn\'t understand empty OPTS command"

    .line 13
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "550 Need argument to OPTS\r\n"

    .line 18
    goto/16 :goto_98

    .line 20
    :cond_13
    const-string v1, " "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v1, v2, :cond_27

    .line 30
    sget-object v0, Lorg/swiftp/CmdOPTS;->TAG:Ljava/lang/String;

    .line 32
    const-string v1, "Couldn\'t parse OPTS command"

    .line 34
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "550 Malformed OPTS command\r\n"

    .line 39
    goto :goto_98

    .line 40
    :cond_27
    const/4 v1, 0x0

    .line 41
    aget-object v1, v0, v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x1

    .line 48
    aget-object v0, v0, v2

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 56
    iget-object v2, v2, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_80

    .line 64
    const-string v2, "ON"

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_63

    .line 72
    sget-object v0, Lorg/swiftp/CmdOPTS;->TAG:Ljava/lang/String;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v3, "Got OPTS "

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, " ON"

    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    goto :goto_7e

    .line 100
    :cond_63
    sget-object v0, Lorg/swiftp/CmdOPTS;->TAG:Ljava/lang/String;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v3, "Ignoring OPTS "

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, " for something besides ON"

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_7e
    const/4 v0, 0x0

    .line 128
    goto :goto_98

    .line 129
    :cond_80
    sget-object v0, Lorg/swiftp/CmdOPTS;->TAG:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v3, "Unrecognized OPTS option: "

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "502 Unrecognized option\r\n"

    .line 153
    :goto_98
    if-eqz v0, :cond_a7

    .line 155
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 157
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 160
    sget-object v0, Lorg/swiftp/CmdOPTS;->TAG:Ljava/lang/String;

    .line 162
    const-string v1, "Template log message"

    .line 164
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    goto :goto_b5

    .line 168
    :cond_a7
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 170
    const-string v1, "200 OPTS accepted\r\n"

    .line 172
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lorg/swiftp/CmdOPTS;->TAG:Ljava/lang/String;

    .line 177
    const-string v1, "Handled OPTS ok"

    .line 179
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_b5
    return-void
.end method
