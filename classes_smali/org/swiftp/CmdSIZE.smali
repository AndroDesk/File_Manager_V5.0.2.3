.class public Lorg/swiftp/CmdSIZE;
.super Lorg/swiftp/FtpCmd;
.source "CmdSIZE.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdSIZE;

    .line 3
    const-string v0, "CmdSIZE"

    .line 5
    sput-object v0, Lorg/swiftp/CmdSIZE;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdSIZE;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    sget-object v0, Lorg/swiftp/CmdSIZE;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "SIZE executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/CmdSIZE;->input:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 16
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v3

    .line 26
    const-wide/16 v4, 0x0

    .line 28
    if-eqz v3, :cond_20

    .line 30
    const-string v0, "550 No directory traversal allowed in SIZE param\r\n"

    .line 32
    goto :goto_5d

    .line 33
    :cond_20
    new-instance v3, Ljava/io/File;

    .line 35
    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v3}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2e

    .line 44
    const-string v0, "550 SIZE target violates chroot\r\n"

    .line 46
    goto :goto_5d

    .line 47
    :cond_2e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_4f

    .line 53
    :try_start_34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v2, "Failed getting size of: "

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4c} :catch_4c

    .line 77
    :catch_4c
    const-string v0, "550 Cannot get the SIZE of nonexistent object\r\n"

    .line 79
    goto :goto_5d

    .line 80
    :cond_4f
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_58

    .line 86
    const-string v0, "550 Cannot get the size of a non-file\r\n"

    .line 88
    goto :goto_5d

    .line 89
    :cond_58
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 92
    move-result-wide v4

    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_5d
    if-eqz v0, :cond_65

    .line 96
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 98
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 101
    goto :goto_80

    .line 102
    :cond_65
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v2, "213 "

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    const-string v2, "\r\n"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 129
    :goto_80
    sget-object v0, Lorg/swiftp/CmdSIZE;->TAG:Ljava/lang/String;

    .line 131
    const-string v1, "SIZE complete"

    .line 133
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method
