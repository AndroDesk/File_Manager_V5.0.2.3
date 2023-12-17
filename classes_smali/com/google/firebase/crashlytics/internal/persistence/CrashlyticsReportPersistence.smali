.class public Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;
.super Ljava/lang/Object;
.source "CrashlyticsReportPersistence.java"


# static fields
.field private static final EVENT_COUNTER_FORMAT:Ljava/lang/String; = "%010d"

.field private static final EVENT_COUNTER_WIDTH:I = 0xa

.field private static final EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final EVENT_FILE_NAME_PREFIX:Ljava/lang/String; = "event"

.field private static final EVENT_NAME_LENGTH:I

.field private static final LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_OPEN_SESSIONS:I = 0x8

.field private static final NATIVE_REPORTS_DIRECTORY:Ljava/lang/String; = "native-reports"

.field private static final NORMAL_EVENT_SUFFIX:Ljava/lang/String; = ""

.field private static final OPEN_SESSIONS_DIRECTORY_NAME:Ljava/lang/String; = "sessions"

.field private static final PRIORITY_EVENT_SUFFIX:Ljava/lang/String; = "_"

.field private static final PRIORITY_REPORTS_DIRECTORY:Ljava/lang/String; = "priority-reports"

.field private static final REPORTS_DIRECTORY:Ljava/lang/String; = "reports"

.field private static final REPORT_FILE_NAME:Ljava/lang/String; = "report"

.field private static final TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

.field private static final USER_FILE_NAME:Ljava/lang/String; = "user"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final WORKING_DIRECTORY_NAME:Ljava/lang/String; = "report-persistence"


# instance fields
.field private final eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final nativeReportsDirectory:Ljava/io/File;

.field private final openSessionsDirectory:Ljava/io/File;

.field private final priorityReportsDirectory:Ljava/io/File;

.field private final reportsDirectory:Ljava/io/File;

.field private final settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;


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
    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    const/16 v0, 0xf

    .line 11
    sput v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->EVENT_NAME_LENGTH:I

    .line 13
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 15
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;-><init>()V

    .line 18
    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 20
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$5;->lambdaFactory$()Ljava/util/Comparator;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    .line 26
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$6;->lambdaFactory$()Ljava/io/FilenameFilter;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    new-instance v0, Ljava/io/File;

    .line 14
    const-string v1, "report-persistence"

    .line 16
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    new-instance p1, Ljava/io/File;

    .line 21
    const-string v1, "sessions"

    .line 23
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->openSessionsDirectory:Ljava/io/File;

    .line 28
    new-instance p1, Ljava/io/File;

    .line 30
    const-string v1, "priority-reports"

    .line 32
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->priorityReportsDirectory:Ljava/io/File;

    .line 37
    new-instance p1, Ljava/io/File;

    .line 39
    const-string v1, "reports"

    .line 41
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->reportsDirectory:Ljava/io/File;

    .line 46
    new-instance p1, Ljava/io/File;

    .line 48
    const-string v1, "native-reports"

    .line 50
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->nativeReportsDirectory:Ljava/io/File;

    .line 55
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 57
    return-void
.end method

.method public static synthetic access$lambda$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->isNormalPriorityEventFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$lambda$1(Ljava/io/File;Ljava/io/File;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->oldestEventFileFirst(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method private capAndGetOpenSessions(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$2;->lambdaFactory$(Ljava/lang/String;)Ljava/io/FileFilter;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->openSessionsDirectory:Ljava/io/File;

    .line 7
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    .line 13
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x8

    .line 22
    if-gt v0, v1, :cond_18

    .line 24
    return-object p1

    .line 25
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    move-result v0

    .line 29
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 37
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_34

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/io/File;

    .line 49
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->recursiveDelete(Ljava/io/File;)V

    .line 52
    goto :goto_24

    .line 53
    :cond_34
    const/4 v0, 0x0

    .line 54
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method private static capFilesCount(Ljava/util/List;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1d

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/io/File;

    .line 21
    if-gt v0, p1, :cond_17

    .line 23
    return v0

    .line 24
    :cond_17
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->recursiveDelete(Ljava/io/File;)V

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 29
    goto :goto_8

    .line 30
    :cond_1d
    return v0
.end method

.method private capFinalizedReports()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;->getSettings()Lcom/google/firebase/crashlytics/internal/settings/model/Settings;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/Settings;->getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCompleteSessionsCount:I

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    if-gt v2, v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2f

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/io/File;

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 47
    goto :goto_1f

    .line 48
    :cond_2f
    return-void
.end method

.method private static varargs combineReportFiles([Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_9
    if-ge v3, v1, :cond_15

    .line 12
    aget-object v5, p0, v3

    .line 14
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 17
    move-result v5

    .line 18
    add-int/2addr v4, v5

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 21
    goto :goto_9

    .line 22
    :cond_15
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 25
    array-length v1, p0

    .line 26
    :goto_19
    if-ge v2, v1, :cond_23

    .line 28
    aget-object v3, p0, v2

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_19

    .line 36
    :cond_23
    return-object v0
.end method

.method private static generateEventFilename(IZ)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p0

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p0, v1, v2

    .line 13
    const-string p0, "%010d"

    .line 15
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p1, :cond_17

    .line 21
    const-string p1, "_"

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const-string p1, ""

    .line 26
    :goto_19
    const-string v0, "event"

    .line 28
    invoke-static {v0, p0, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private getAllFinalizedReportFiles()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/util/List;

    .line 4
    new-array v0, v0, [Ljava/util/List;

    .line 6
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->priorityReportsDirectory:Ljava/io/File;

    .line 8
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v0, v3

    .line 15
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->nativeReportsDirectory:Ljava/io/File;

    .line 17
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;

    .line 20
    move-result-object v2

    .line 21
    const/4 v4, 0x1

    .line 22
    aput-object v2, v0, v4

    .line 24
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->combineReportFiles([Ljava/util/List;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    aput-object v0, v1, v3

    .line 30
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->reportsDirectory:Ljava/io/File;

    .line 32
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    aput-object v0, v1, v4

    .line 38
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->sortAndCombineReportFiles([Ljava/util/List;)Ljava/util/List;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method private static getEventNameWithoutPriority(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->EVENT_NAME_LENGTH:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static getFilesInDirectory(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    if-nez p1, :cond_12

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    goto :goto_16

    :cond_12
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    :goto_16
    if-eqz p0, :cond_1d

    .line 8
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_21

    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method private static getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    if-nez p1, :cond_12

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    goto :goto_16

    :cond_12
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    :goto_16
    if-eqz p0, :cond_1d

    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_21

    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method private getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->openSessionsDirectory:Ljava/io/File;

    .line 5
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method private static isHighPriorityEventFile(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "event"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    const-string v0, "_"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method private static isNormalPriorityEventFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string p0, "event"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_12

    .line 9
    const-string p0, "_"

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method public static synthetic lambda$capAndGetOpenSessions$3(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method public static synthetic lambda$deleteFinalizedReport$2(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic lambda$static$0(Ljava/io/File;Ljava/io/File;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic lambda$static$1(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string p0, "event"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static makeDirectory(Ljava/io/File;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 17
    :goto_10
    return p0
.end method

.method private static oldestEventFileFirst(Ljava/io/File;Ljava/io/File;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getEventNameWithoutPriority(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getEventNameWithoutPriority(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method private static prepareDirectory(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->makeDirectory(Ljava/io/File;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p0

    .line 8
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "Could not create directory "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method private static readTextFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 1
    const/16 v0, 0x2000

    .line 3
    new-array v0, v0, [B

    .line 5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 7
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    new-instance v2, Ljava/io/FileInputStream;

    .line 12
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 15
    :goto_e
    :try_start_e
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 18
    move-result p0

    .line 19
    if-lez p0, :cond_19

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v0, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 25
    goto :goto_e

    .line 26
    :cond_19
    new-instance p0, Ljava/lang/String;

    .line 28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_28

    .line 37
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 40
    return-object p0

    .line 41
    :catchall_28
    move-exception p0

    .line 42
    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2c

    .line 45
    :catchall_2c
    throw p0
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .registers 5

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_19

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    if-ge v2, v1, :cond_19

    .line 18
    aget-object v3, v0, v2

    .line 20
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->recursiveDelete(Ljava/io/File;)V

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_f

    .line 26
    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 29
    return-void
.end method

.method private static varargs sortAndCombineReportFiles([Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_e

    .line 5
    aget-object v2, p0, v1

    .line 7
    sget-object v3, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    goto :goto_2

    .line 15
    :cond_e
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->combineReportFiles([Ljava/util/List;)Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static synthesizeNativeReportFile(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 3
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportFromJson(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->withNdkPayload(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 14
    move-result-object p2

    .line 15
    new-instance v1, Ljava/io/File;

    .line 17
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->prepareDirectory(Ljava/io/File;)Ljava/io/File;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_38

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 36
    move-result-object p2

    .line 37
    new-instance p3, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v0, "Could not synthesize final native report file for "

    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_38
    return-void
.end method

.method private synthesizeReport(Ljava/io/File;J)V
    .registers 13

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

    .line 3
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2a

    .line 13
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 16
    move-result-object p2

    .line 17
    const-string p3, "Session "

    .line 19
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p1, " has no events."

    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 42
    return-void

    .line 43
    :cond_2a
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    :cond_37
    move v5, v1

    .line 57
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_79

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/io/File;

    .line 69
    :try_start_44
    sget-object v4, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 71
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v4, v6}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->eventFromJson(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    if-nez v5, :cond_5d

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->isHighPriorityEventFile(Ljava/lang/String;)Z

    .line 91
    move-result v3
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5b} :catch_5f

    .line 92
    if-eqz v3, :cond_37

    .line 94
    :cond_5d
    const/4 v5, 0x1

    .line 95
    goto :goto_38

    .line 96
    :catch_5f
    move-exception v4

    .line 97
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 100
    move-result-object v6

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v8, "Could not add event to report for "

    .line 108
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v6, v3, v4}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    goto :goto_38

    .line 122
    :cond_79
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_98

    .line 128
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 131
    move-result-object p2

    .line 132
    const-string p3, "Could not parse event files for session "

    .line 134
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 152
    return-void

    .line 153
    :cond_98
    const/4 v0, 0x0

    .line 154
    new-instance v1, Ljava/io/File;

    .line 156
    const-string v3, "user"

    .line 158
    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_c4

    .line 167
    :try_start_a6
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    .line 170
    move-result-object v0
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_aa} :catch_ab

    .line 171
    goto :goto_c4

    .line 172
    :catch_ab
    move-exception v1

    .line 173
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 176
    move-result-object v3

    .line 177
    const-string v4, "Could not read user ID file in "

    .line 179
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v3, v4, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    :cond_c4
    :goto_c4
    move-object v6, v0

    .line 198
    new-instance v0, Ljava/io/File;

    .line 200
    const-string v1, "report"

    .line 202
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    if-eqz v5, :cond_d1

    .line 207
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->priorityReportsDirectory:Ljava/io/File;

    .line 209
    goto :goto_d3

    .line 210
    :cond_d1
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->reportsDirectory:Ljava/io/File;

    .line 212
    :goto_d3
    move-object v1, p1

    .line 213
    move-wide v3, p2

    .line 214
    invoke-static/range {v0 .. v6}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->synthesizeReportFile(Ljava/io/File;Ljava/io/File;Ljava/util/List;JZLjava/lang/String;)V

    .line 217
    return-void
.end method

.method private static synthesizeReportFile(Ljava/io/File;Ljava/io/File;Ljava/util/List;JZLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;",
            ">;JZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 3
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportFromJson(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->withSessionEndFields(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 14
    move-result-object p3

    .line 15
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->from(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/ImmutableList;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p3, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->withEvents(Lcom/google/firebase/crashlytics/internal/model/ImmutableList;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getSession()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    .line 26
    move-result-object p3

    .line 27
    if-nez p3, :cond_1d

    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance p4, Ljava/io/File;

    .line 32
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->prepareDirectory(Ljava/io/File;)Ljava/io/File;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getIdentifier()Ljava/lang/String;

    .line 39
    move-result-object p3

    .line 40
    invoke-direct {p4, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p4, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_32

    .line 50
    goto :goto_4b

    .line 51
    :catch_32
    move-exception p1

    .line 52
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 55
    move-result-object p2

    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string p4, "Could not synthesize final report file for "

    .line 63
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :goto_4b
    return-void
.end method

.method private static trimEvents(Ljava/io/File;I)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;->lambdaFactory$()Ljava/io/FilenameFilter;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$4;->lambdaFactory$()Ljava/util/Comparator;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->capFilesCount(Ljava/util/List;I)I

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method private static writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 3
    new-instance v1, Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8
    sget-object p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    invoke-direct {v0, v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 13
    :try_start_c
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 16
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception p0

    .line 21
    :try_start_14
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_17

    .line 24
    :catchall_17
    throw p0
.end method


# virtual methods
.method public deleteAllReports()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_18

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/io/File;

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return-void
.end method

.method public deleteFinalizedReport(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$1;->lambdaFactory$(Ljava/lang/String;)Ljava/io/FilenameFilter;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ljava/util/List;

    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->priorityReportsDirectory:Ljava/io/File;

    .line 10
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 17
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->nativeReportsDirectory:Ljava/io/File;

    .line 19
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->reportsDirectory:Ljava/io/File;

    .line 28
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x2

    .line 33
    aput-object p1, v0, v1

    .line 35
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->combineReportFiles([Ljava/util/List;)Ljava/util/List;

    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p1

    .line 43
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3a

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/io/File;

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 58
    goto :goto_2a

    .line 59
    :cond_3a
    return-void
.end method

.method public finalizeReports(Ljava/lang/String;J)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->capAndGetOpenSessions(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_33

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/io/File;

    .line 21
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 24
    move-result-object v1

    .line 25
    const-string v2, "Finalizing report for session "

    .line 27
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, v0, p2, p3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->synthesizeReport(Ljava/io/File;J)V

    .line 48
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->recursiveDelete(Ljava/io/File;)V

    .line 51
    goto :goto_8

    .line 52
    :cond_33
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->capFinalizedReports()V

    .line 55
    return-void
.end method

.method public finalizeSessionWithNativeEvent(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "report"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->nativeReportsDirectory:Ljava/io/File;

    .line 14
    invoke-static {v0, v1, p2, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->synthesizeNativeReportFile(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public hasFinalizedReports()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method

.method public listSortedOpenSessionIds()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->openSessionsDirectory:Ljava/io/File;

    .line 3
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    .line 9
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_28

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/io/File;

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_14

    .line 41
    :cond_28
    return-object v1
.end method

.method public loadFinalizedReports()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_5c

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/io/File;

    .line 37
    :try_start_24
    sget-object v3, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 39
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportFromJson(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;->create(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_39} :catch_3a

    .line 58
    goto :goto_18

    .line 59
    :catch_3a
    move-exception v3

    .line 60
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 63
    move-result-object v4

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v6, "Could not load report file "

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v6, "; deleting"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 92
    goto :goto_18

    .line 93
    :cond_5c
    return-object v1
.end method

.method public persistEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->persistEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Ljava/lang/String;Z)V

    return-void
.end method

.method public persistEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Ljava/lang/String;Z)V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;->getSettings()Lcom/google/firebase/crashlytics/internal/settings/model/Settings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/Settings;->getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v0

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCustomExceptionEvents:I

    .line 4
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    invoke-virtual {v2, p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->eventToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2, p3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->generateEventFilename(IZ)Ljava/lang/String;

    move-result-object p3

    .line 7
    :try_start_20
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_29

    goto :goto_42

    :catch_29
    move-exception p1

    .line 8
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not persist event for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_42
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->trimEvents(Ljava/io/File;I)I

    return-void
.end method

.method public persistReport(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getSession()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_10

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "Could not get session for report"

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getIdentifier()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    :try_start_14
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->prepareDirectory(Ljava/io/File;)Ljava/io/File;

    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 31
    invoke-virtual {v2, p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    new-instance v2, Ljava/io/File;

    .line 37
    const-string v3, "report"

    .line 39
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    invoke-static {v2, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_46

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v3, "Could not persist report for session "

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :goto_46
    return-void
.end method

.method public persistUserIdForSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    new-instance v1, Ljava/io/File;

    .line 7
    const-string v2, "user"

    .line 9
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_f

    .line 15
    goto :goto_28

    .line 16
    :catch_f
    move-exception p1

    .line 17
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v2, "Could not persist user ID for session "

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :goto_28
    return-void
.end method
