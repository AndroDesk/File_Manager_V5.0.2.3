.class public Lcom/google/firebase/crashlytics/internal/log/LogFileManager;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;,
        Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;
    }
.end annotation


# static fields
.field private static final COLLECT_CUSTOM_LOGS:Ljava/lang/String; = "com.crashlytics.CollectCustomLogs"

.field private static final LOGFILE_EXT:Ljava/lang/String; = ".temp"

.field private static final LOGFILE_PREFIX:Ljava/lang/String; = "crashlytics-userlog-"

.field public static final MAX_LOG_SIZE:I = 0x10000

.field private static final NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

.field private final directoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;-><init>(Lcom/google/firebase/crashlytics/internal/log/LogFileManager$1;)V

    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->directoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    .line 5
    sget-object p1, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 6
    invoke-virtual {p0, p3}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->setCurrentSession(Ljava/lang/String;)V

    return-void
.end method

.method private getSessionIdForFile(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, ".temp"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    return-object p1

    .line 15
    :cond_e
    const/16 v1, 0x14

    .line 17
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private getWorkingFileForSession(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    const-string v0, "crashlytics-userlog-"

    .line 3
    const-string v1, ".temp"

    .line 5
    invoke-static {v0, p1, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->directoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    .line 13
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;->getLogFileDir()Ljava/io/File;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    return-object v0
.end method


# virtual methods
.method public clearLog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->deleteLogFile()V

    .line 6
    return-void
.end method

.method public discardOldLogFiles(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->directoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;->getLogFileDir()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_22

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, v1, :cond_22

    .line 17
    aget-object v3, v0, v2

    .line 19
    invoke-direct {p0, v3}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->getSessionIdForFile(Ljava/io/File;)Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 23
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1f

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 32
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_e

    .line 35
    :cond_22
    return-void
.end method

.method public getBytesForLog()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->getLogAsBytes()[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLogString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->getLogAsString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final setCurrentSession(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->closeLogFile()V

    .line 6
    sget-object v0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;

    .line 8
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 10
    if-nez p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->context:Landroid/content/Context;

    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "com.crashlytics.CollectCustomLogs"

    .line 18
    invoke-static {v0, v2, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_21

    .line 24
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "Preferences requested no custom logs. Aborting log file creation."

    .line 30
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    :cond_21
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->getWorkingFileForSession(Ljava/lang/String;)Ljava/io/File;

    .line 37
    move-result-object p1

    .line 38
    const/high16 v0, 0x10000

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->setLogFile(Ljava/io/File;I)V

    .line 43
    return-void
.end method

.method public setLogFile(Ljava/io/File;I)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;-><init>(Ljava/io/File;I)V

    .line 6
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 8
    return-void
.end method

.method public writeToLog(JLjava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->writeToLog(JLjava/lang/String;)V

    .line 6
    return-void
.end method
