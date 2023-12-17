.class public Lorg/swiftp/CmdPORT;
.super Lorg/swiftp/FtpCmd;
.source "CmdPORT.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdPORT;

    .line 3
    const-string v0, "CmdPORT"

    .line 5
    sput-object v0, Lorg/swiftp/CmdPORT;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdPORT;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    sget-object v0, Lorg/swiftp/CmdPORT;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "PORT running"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lorg/swiftp/CmdPORT;->input:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "|"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_21

    .line 22
    const-string v1, "::"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_21

    .line 30
    const-string v0, "550 No IPv6 support, reconfigure your client\r\n"

    .line 32
    goto/16 :goto_92

    .line 34
    :cond_21
    const-string v1, ","

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    array-length v1, v0

    .line 41
    const/4 v2, 0x6

    .line 42
    if-eq v1, v2, :cond_2e

    .line 44
    const-string v0, "550 Malformed PORT argument\r\n"

    .line 46
    goto :goto_92

    .line 47
    :cond_2e
    array-length v1, v0

    .line 48
    const/4 v2, 0x0

    .line 49
    move v3, v2

    .line 50
    :goto_31
    const-string v4, "\r\n"

    .line 52
    if-ge v3, v1, :cond_51

    .line 54
    aget-object v5, v0, v3

    .line 56
    const-string v6, "[0-9]+"

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_4a

    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 67
    move-result v6

    .line 68
    const/4 v7, 0x3

    .line 69
    if-le v6, v7, :cond_47

    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_31

    .line 75
    :cond_4a
    :goto_4a
    const-string v0, "550 Invalid PORT argument: "

    .line 77
    invoke-static {v0, v5, v4}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    goto :goto_92

    .line 82
    :cond_51
    const/4 v1, 0x4

    .line 83
    new-array v3, v1, [B

    .line 85
    :goto_54
    if-ge v2, v1, :cond_75

    .line 87
    :try_start_56
    aget-object v5, v0, v2

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    move-result v5

    .line 93
    const/16 v6, 0x80

    .line 95
    if-lt v5, v6, :cond_62

    .line 97
    add-int/lit16 v5, v5, -0x100

    .line 99
    :cond_62
    int-to-byte v5, v5

    .line 100
    aput-byte v5, v3, v2
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_65} :catch_68

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 104
    goto :goto_54

    .line 105
    :catch_68
    const-string v1, "550 Invalid PORT format: "

    .line 107
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v1

    .line 111
    aget-object v0, v0, v2

    .line 113
    invoke-static {v1, v0, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    goto :goto_92

    .line 118
    :cond_75
    :try_start_75
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 121
    move-result-object v2
    :try_end_79
    .catch Ljava/net/UnknownHostException; {:try_start_75 .. :try_end_79} :catch_90

    .line 122
    aget-object v1, v0, v1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 127
    move-result v1

    .line 128
    mul-int/lit16 v1, v1, 0x100

    .line 130
    const/4 v3, 0x5

    .line 131
    aget-object v0, v0, v3

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 136
    move-result v0

    .line 137
    add-int/2addr v0, v1

    .line 138
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 140
    invoke-virtual {v1, v2, v0}, Lorg/swiftp/SessionThread;->onPort(Ljava/net/InetAddress;I)Z

    .line 143
    const/4 v0, 0x0

    .line 144
    goto :goto_92

    .line 145
    :catch_90
    const-string v0, "550 Unknown host\r\n"

    .line 147
    :goto_92
    if-nez v0, :cond_a3

    .line 149
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 151
    const-string v1, "200 PORT OK\r\n"

    .line 153
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lorg/swiftp/CmdPORT;->TAG:Ljava/lang/String;

    .line 158
    const-string v1, "PORT completed"

    .line 160
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    goto :goto_be

    .line 164
    :cond_a3
    sget-object v1, Lorg/swiftp/CmdPORT;->TAG:Ljava/lang/String;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string v3, "PORT error: "

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v2

    .line 183
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 188
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 191
    :goto_be
    return-void
.end method
