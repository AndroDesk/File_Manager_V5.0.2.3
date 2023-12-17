.class public Lorg/swiftp/CmdLIST;
.super Lorg/swiftp/CmdAbstractListing;
.source "CmdLIST.java"


# static fields
.field private static final MS_IN_SIX_MONTHS:J = -0x61075000L


# instance fields
.field private TAG:Ljava/lang/String;

.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/CmdAbstractListing;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    const-class p1, Lorg/swiftp/CmdLIST;

    .line 6
    const-string p1, "CmdLIST"

    .line 8
    iput-object p1, p0, Lorg/swiftp/CmdLIST;->TAG:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lorg/swiftp/CmdLIST;->input:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public makeLsString(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_14

    .line 13
    iget-object p1, p0, Lorg/swiftp/CmdLIST;->TAG:Ljava/lang/String;

    .line 15
    const-string v0, "makeLsString had nonexistent file"

    .line 17
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v2

    .line 21
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const-string v3, "*"

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_96

    .line 33
    const-string v3, "/"

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_29

    .line 41
    goto :goto_96

    .line 42
    :cond_29
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_35

    .line 48
    const-string v2, "drwxr-xr-x 1 owner group"

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    goto :goto_3a

    .line 54
    :cond_35
    const-string v2, "-rw-r--r-- 1 owner group"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :goto_3a
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 62
    move-result-wide v2

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    move-result v3

    .line 71
    rsub-int/lit8 v3, v3, 0xd

    .line 73
    :goto_48
    add-int/lit8 v4, v3, -0x1

    .line 75
    if-lez v3, :cond_53

    .line 77
    const/16 v3, 0x20

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    move v3, v4

    .line 83
    goto :goto_48

    .line 84
    :cond_53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 90
    move-result-wide v2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    move-result-wide v4

    .line 95
    sub-long/2addr v4, v2

    .line 96
    const-wide/32 v2, -0x61075000

    .line 99
    cmp-long v2, v4, v2

    .line 101
    if-lez v2, :cond_70

    .line 103
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 105
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 107
    const-string v4, " MMM dd HH:mm "

    .line 109
    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 112
    goto :goto_79

    .line 113
    :cond_70
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 115
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 117
    const-string v4, " MMM dd  yyyy "

    .line 119
    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 122
    :goto_79
    new-instance v3, Ljava/util/Date;

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 127
    move-result-wide v4

    .line 128
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 131
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string p1, "\r\n"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_96
    :goto_96
    iget-object p1, p0, Lorg/swiftp/CmdLIST;->TAG:Ljava/lang/String;

    .line 153
    const-string v0, "Filename omitted due to disallowed character"

    .line 155
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object v2
.end method

.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/swiftp/CmdLIST;->input:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/swiftp/CmdLIST;->TAG:Ljava/lang/String;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v3, "LIST parameter: "

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_1c
    const-string v1, "-"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3f

    .line 37
    iget-object v1, p0, Lorg/swiftp/CmdLIST;->TAG:Ljava/lang/String;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v3, "LIST is skipping dashed arg "

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    goto :goto_1c

    .line 64
    :cond_3f
    const-string v1, ""

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_4e

    .line 72
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 74
    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 77
    move-result-object v0

    .line 78
    goto :goto_6e

    .line 79
    :cond_4e
    const-string v1, "*"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_59

    .line 87
    const-string v0, "550 LIST does not support wildcards\r\n"

    .line 89
    goto :goto_92

    .line 90
    :cond_59
    new-instance v1, Ljava/io/File;

    .line 92
    iget-object v2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 94
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v1}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6d

    .line 107
    const-string v0, "450 Listing target violates chroot\r\n"

    .line 109
    goto :goto_92

    .line 110
    :cond_6d
    move-object v0, v1

    .line 111
    :goto_6e
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_85

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {p0, v1, v0}, Lorg/swiftp/CmdAbstractListing;->listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_80

    .line 128
    goto :goto_92

    .line 129
    :cond_80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    goto :goto_8e

    .line 134
    :cond_85
    invoke-virtual {p0, v0}, Lorg/swiftp/CmdLIST;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    if-nez v0, :cond_8e

    .line 140
    const-string v0, "450 Couldn\'t list that file\r\n"

    .line 142
    goto :goto_92

    .line 143
    :cond_8e
    :goto_8e
    invoke-virtual {p0, v0}, Lorg/swiftp/CmdAbstractListing;->sendListing(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    :goto_92
    if-eqz v0, :cond_b0

    .line 149
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 151
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lorg/swiftp/CmdLIST;->TAG:Ljava/lang/String;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const-string v3, "LIST failed with: "

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    goto :goto_b7

    .line 177
    :cond_b0
    iget-object v0, p0, Lorg/swiftp/CmdLIST;->TAG:Ljava/lang/String;

    .line 179
    const-string v1, "LIST completed OK"

    .line 181
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_b7
    return-void
.end method
