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

    const-class v0, Lorg/swiftp/CmdPORT;

    const-string v0, "CmdPORT"

    sput-object v0, Lorg/swiftp/CmdPORT;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    iput-object p2, p0, Lorg/swiftp/CmdPORT;->input:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    sget-object v0, Lorg/swiftp/CmdPORT;->TAG:Ljava/lang/String;

    const-string v1, "PORT running"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/CmdPORT;->input:Ljava/lang/String;

    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "550 No IPv6 support, reconfigure your client\r\n"

    goto/16 :goto_92

    :cond_21
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2e

    const-string v0, "550 Malformed PORT argument\r\n"

    goto :goto_92

    :cond_2e
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_31
    const-string v4, "\r\n"

    if-ge v3, v1, :cond_51

    aget-object v5, v0, v3

    const-string v6, "[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_47

    goto :goto_4a

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_4a
    :goto_4a
    const-string v0, "550 Invalid PORT argument: "

    invoke-static {v0, v5, v4}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    :cond_51
    const/4 v1, 0x4

    new-array v3, v1, [B

    :goto_54
    if-ge v2, v1, :cond_75

    :try_start_56
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_62

    add-int/lit16 v5, v5, -0x100

    :cond_62
    int-to-byte v5, v5

    aput-byte v5, v3, v2
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_65} :catch_68

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :catch_68
    const-string v1, "550 Invalid PORT format: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-static {v1, v0, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    :cond_75
    :try_start_75
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_79
    .catch Ljava/net/UnknownHostException; {:try_start_75 .. :try_end_79} :catch_90

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1, v2, v0}, Lorg/swiftp/SessionThread;->onPort(Ljava/net/InetAddress;I)Z

    const/4 v0, 0x0

    goto :goto_92

    :catch_90
    const-string v0, "550 Unknown host\r\n"

    :goto_92
    if-nez v0, :cond_a3

    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v1, "200 PORT OK\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    sget-object v0, Lorg/swiftp/CmdPORT;->TAG:Ljava/lang/String;

    const-string v1, "PORT completed"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    :cond_a3
    sget-object v1, Lorg/swiftp/CmdPORT;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PORT error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    :goto_be
    return-void
.end method
