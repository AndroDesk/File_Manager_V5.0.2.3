.class public Lorg/swiftp/CmdNLST;
.super Lorg/swiftp/CmdAbstractListing;
.source "CmdNLST.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdLIST;

    .line 3
    const-string v0, "CmdLIST"

    .line 5
    sput-object v0, Lorg/swiftp/CmdNLST;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/CmdAbstractListing;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdNLST;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public makeLsString(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_f

    .line 8
    sget-object p1, Lorg/swiftp/CmdNLST;->TAG:Ljava/lang/String;

    .line 10
    const-string v0, "makeLsString had nonexistent file"

    .line 12
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-object v1

    .line 16
    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "*"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_4c

    .line 28
    const-string v0, "/"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_24

    .line 36
    goto :goto_4c

    .line 37
    :cond_24
    sget-object v0, Lorg/swiftp/CmdNLST;->TAG:Ljava/lang/String;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v2, "Filename: "

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, "\r\n"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_4c
    :goto_4c
    sget-object p1, Lorg/swiftp/CmdNLST;->TAG:Ljava/lang/String;

    .line 79
    const-string v0, "Filename omitted due to disallowed character"

    .line 81
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v1
.end method

.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/swiftp/CmdNLST;->input:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "-"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v1

    .line 13
    const-string v2, ""

    .line 15
    if-eqz v1, :cond_11

    .line 17
    move-object v0, v2

    .line 18
    :cond_11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1e

    .line 24
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 26
    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_47

    .line 31
    :cond_1e
    const-string v1, "*"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_29

    .line 39
    const-string v0, "550 NLST does not support wildcards\r\n"

    .line 41
    goto :goto_6b

    .line 42
    :cond_29
    new-instance v1, Ljava/io/File;

    .line 44
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 46
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v1}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3d

    .line 59
    const-string v0, "450 Listing target violates chroot\r\n"

    .line 61
    goto :goto_6b

    .line 62
    :cond_3d
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_46

    .line 68
    const-string v0, "550 NLST for regular files is unsupported\r\n"

    .line 70
    goto :goto_6b

    .line 71
    :cond_46
    move-object v0, v1

    .line 72
    :goto_47
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5e

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {p0, v1, v0}, Lorg/swiftp/CmdAbstractListing;->listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_59

    .line 89
    goto :goto_6b

    .line 90
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    goto :goto_67

    .line 95
    :cond_5e
    invoke-virtual {p0, v0}, Lorg/swiftp/CmdNLST;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_67

    .line 101
    const-string v0, "450 Couldn\'t list that file\r\n"

    .line 103
    goto :goto_6b

    .line 104
    :cond_67
    :goto_67
    invoke-virtual {p0, v0}, Lorg/swiftp/CmdAbstractListing;->sendListing(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    :goto_6b
    if-eqz v0, :cond_89

    .line 110
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 112
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lorg/swiftp/CmdNLST;->TAG:Ljava/lang/String;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v3, "NLST failed with: "

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    goto :goto_90

    .line 138
    :cond_89
    sget-object v0, Lorg/swiftp/CmdNLST;->TAG:Ljava/lang/String;

    .line 140
    const-string v1, "NLST completed OK"

    .line 142
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_90
    return-void
.end method
