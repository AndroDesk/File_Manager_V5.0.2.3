.class public Lorg/swiftp/CmdRMD;
.super Lorg/swiftp/FtpCmd;
.source "CmdRMD.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final message:Ljava/lang/String; = "TEMPLATE!!"


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdRMD;

    .line 3
    const-string v0, "CmdRMD"

    .line 5
    sput-object v0, Lorg/swiftp/CmdRMD;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdRMD;->input:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private recursiveDelete(Ljava/io/File;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_42

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 18
    move-result-object v0

    .line 19
    array-length v2, v0

    .line 20
    const/4 v3, 0x1

    .line 21
    move v4, v1

    .line 22
    move v5, v3

    .line 23
    :goto_16
    if-ge v4, v2, :cond_22

    .line 25
    aget-object v6, v0, v4

    .line 27
    invoke-direct {p0, v6}, Lorg/swiftp/CmdRMD;->recursiveDelete(Ljava/io/File;)Z

    .line 30
    move-result v6

    .line 31
    and-int/2addr v5, v6

    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 34
    goto :goto_16

    .line 35
    :cond_22
    sget-object v0, Lorg/swiftp/CmdRMD;->TAG:Ljava/lang/String;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v4, "Recursively deleted: "

    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz v5, :cond_41

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_41

    .line 65
    move v1, v3

    .line 66
    :cond_41
    return v1

    .line 67
    :cond_42
    sget-object v0, Lorg/swiftp/CmdRMD;->TAG:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v2, "RMD deleting file: "

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 92
    move-result p1

    .line 93
    return p1
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    sget-object v0, Lorg/swiftp/CmdRMD;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "RMD executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/CmdRMD;->input:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ge v2, v3, :cond_17

    .line 21
    const-string v1, "550 Invalid argument\r\n"

    .line 23
    goto :goto_4d

    .line 24
    :cond_17
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 26
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2, v1}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2a

    .line 40
    const-string v1, "550 Invalid name or chroot violation\r\n"

    .line 42
    goto :goto_4d

    .line 43
    :cond_2a
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_33

    .line 49
    const-string v1, "550 Can\'t RMD a non-directory\r\n"

    .line 51
    goto :goto_4d

    .line 52
    :cond_33
    new-instance v2, Ljava/io/File;

    .line 54
    const-string v3, "/"

    .line 56
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_43

    .line 65
    const-string v1, "550 Won\'t RMD the root directory\r\n"

    .line 67
    goto :goto_4d

    .line 68
    :cond_43
    invoke-direct {p0, v1}, Lorg/swiftp/CmdRMD;->recursiveDelete(Ljava/io/File;)Z

    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4c

    .line 74
    const-string v1, "550 Deletion error, possibly incomplete\r\n"

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    const/4 v1, 0x0

    .line 78
    :goto_4d
    if-eqz v1, :cond_6d

    .line 80
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 82
    invoke-virtual {v2, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v3, "RMD failed: "

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    goto :goto_74

    .line 110
    :cond_6d
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 112
    const-string v2, "250 Removed directory\r\n"

    .line 114
    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 117
    :goto_74
    const-string v1, "RMD finished"

    .line 119
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
