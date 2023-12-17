.class Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/FileLogStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

.field private final maxLogSize:I

.field private final workingFile:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 6
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->maxLogSize:I

    .line 8
    return-void
.end method

.method private doWriteToLog(JLjava/lang/String;)V
    .registers 8

    .line 1
    const-string v0, " "

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    if-nez p3, :cond_b

    .line 10
    const-string p3, "null"

    .line 12
    :cond_b
    :try_start_b
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->maxLogSize:I

    .line 14
    div-int/lit8 v1, v1, 0x4

    .line 16
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 19
    move-result v2

    .line 20
    if-le v2, v1, :cond_2f

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v3, "..."

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 35
    move-result v3

    .line 36
    sub-int/2addr v3, v1

    .line 37
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p3

    .line 48
    :cond_2f
    const-string v1, "\r"

    .line 50
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p3

    .line 54
    const-string v1, "\n"

    .line 56
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p3

    .line 60
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    const-string v1, "%d %s%n"

    .line 64
    const/4 v2, 0x2

    .line 65
    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    move-result-object p1

    .line 72
    aput-object p1, v2, v3

    .line 74
    const/4 p1, 0x1

    .line 75
    aput-object p3, v2, p1

    .line 77
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    sget-object p2, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 89
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->add([B)V

    .line 92
    :goto_5b
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 94
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->isEmpty()Z

    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_7d

    .line 100
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 102
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->usedBytes()I

    .line 105
    move-result p1

    .line 106
    iget p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->maxLogSize:I

    .line 108
    if-le p1, p2, :cond_7d

    .line 110
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 112
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->remove()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_72} :catch_73

    .line 115
    goto :goto_5b

    .line 116
    :catch_73
    move-exception p1

    .line 117
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 120
    move-result-object p2

    .line 121
    const-string p3, "There was a problem writing to the Crashlytics log."

    .line 123
    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_7d
    return-void
.end method

.method private getLogBytes()Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-object v1

    .line 11
    :cond_a
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->openLogFile()V

    .line 14
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 16
    if-nez v0, :cond_12

    .line 18
    return-object v1

    .line 19
    :cond_12
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [I

    .line 22
    const/4 v2, 0x0

    .line 23
    aput v2, v1, v2

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->usedBytes()I

    .line 28
    move-result v0

    .line 29
    new-array v0, v0, [B

    .line 31
    :try_start_1e
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 33
    new-instance v4, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;

    .line 35
    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;-><init>(Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;[B[I)V

    .line 38
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->forEach(Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_29

    .line 41
    goto :goto_33

    .line 42
    :catch_29
    move-exception v3

    .line 43
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 46
    move-result-object v4

    .line 47
    const-string v5, "A problem occurred while reading the Crashlytics log file."

    .line 49
    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_33
    new-instance v3, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;

    .line 54
    aget v1, v1, v2

    .line 56
    invoke-direct {v3, v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;-><init>([BI)V

    .line 59
    return-object v3
.end method

.method private openLogFile()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 3
    if-nez v0, :cond_25

    .line 5
    :try_start_4
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 7
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 9
    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;-><init>(Ljava/io/File;)V

    .line 12
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    .line 14
    goto :goto_25

    .line 15
    :catch_e
    move-exception v0

    .line 16
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "Could not open log file: "

    .line 22
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public closeLogFile()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 3
    const-string v1, "There was a problem closing the Crashlytics log file."

    .line 5
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 11
    return-void
.end method

.method public deleteLogFile()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->closeLogFile()V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    return-void
.end method

.method public getLogAsBytes()[B
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->getLogBytes()Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_8
    iget v1, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->offset:I

    .line 11
    new-array v2, v1, [B

    .line 13
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->bytes:[B

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    return-object v2
.end method

.method public getLogAsString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->getLogAsBytes()[B

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    new-instance v1, Ljava/lang/String;

    .line 9
    sget-object v2, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    return-object v1
.end method

.method public writeToLog(JLjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->openLogFile()V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->doWriteToLog(JLjava/lang/String;)V

    .line 7
    return-void
.end method
