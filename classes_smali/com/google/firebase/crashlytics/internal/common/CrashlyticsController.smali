.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"


# static fields
.field public static final APP_EXCEPTION_MARKER_FILTER:Ljava/io/FilenameFilter;

.field public static final APP_EXCEPTION_MARKER_PREFIX:Ljava/lang/String; = ".ae"

.field public static final FIREBASE_APPLICATION_EXCEPTION:Ljava/lang/String; = "_ae"

.field public static final FIREBASE_CRASH_TYPE:Ljava/lang/String; = "fatal"

.field public static final FIREBASE_CRASH_TYPE_FATAL:I = 0x1

.field public static final FIREBASE_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final GENERATOR_FORMAT:Ljava/lang/String; = "Crashlytics Android SDK/%s"

.field public static final NATIVE_SESSION_DIR:Ljava/lang/String; = "native-sessions"


# instance fields
.field private final analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;

.field private final appData:Lcom/google/firebase/crashlytics/internal/common/AppData;

.field private final backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

.field public final checkForUnsentReportsCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final context:Landroid/content/Context;

.field private crashHandler:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;

.field private final crashMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

.field private final dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

.field private final fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

.field private final idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

.field private final logFileDirectoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

.field private final logFileManager:Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

.field private final nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

.field public final reportActionProvided:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

.field private final unityVersion:Ljava/lang/String;

.field public final unsentReportsAvailable:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final unsentReportsHandled:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final userMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;->lambdaFactory$()Ljava/io/FilenameFilter;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->APP_EXCEPTION_MARKER_FILTER:Ljava/io/FilenameFilter;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;Lcom/google/firebase/crashlytics/internal/common/AppData;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsAvailable:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportActionProvided:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsHandled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->checkForUnsentReportsCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->context:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 9
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 10
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    .line 11
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->crashMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 12
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->appData:Lcom/google/firebase/crashlytics/internal/common/AppData;

    .line 13
    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->userMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 14
    iput-object p9, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logFileManager:Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

    .line 15
    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logFileDirectoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    .line 16
    iput-object p12, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 17
    iget-object p1, p7, Lcom/google/firebase/crashlytics/internal/common/AppData;->unityVersionProvider:Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;

    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;->getUnityVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unityVersion:Ljava/lang/String;

    .line 18
    iput-object p13, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;

    .line 19
    iput-object p11, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    return-void
.end method

.method public static synthetic access$000(Ljava/util/Date;)J
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getTimestampSeconds(Ljava/util/Date;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getCurrentSessionId()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/log/LogFileManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logFileManager:Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->crashMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->doWriteAppExceptionMarker(J)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->doOpenSession()V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/android/gms/tasks/Task;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logAnalyticsAppExceptionEvents()Lcom/google/android/gms/tasks/Task;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900([Ljava/io/File;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->deleteFiles([Ljava/io/File;)V

    .line 4
    return-void
.end method

.method private cacheKeyData(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/util/Map;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->submit(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    return-void
.end method

.method private cacheUserData(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->submit(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    return-void
.end method

.method private static deleteFiles([Ljava/io/File;)V
    .registers 4

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    array-length v0, p0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_f

    .line 8
    aget-object v2, p0, v1

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_5

    .line 16
    :cond_f
    return-void
.end method

.method private doCloseSessions(Z)V
    .registers 7

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->listSortedOpenSessionIds()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_16

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v0, "No open sessions to be closed."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->hasCrashDataForSession(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 7
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->finalizePreviousNativeSession(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->finalizeSession(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not finalize native session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    :cond_47
    const/4 v1, 0x0

    if-eqz p1, :cond_52

    const/4 p1, 0x0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 11
    :cond_52
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getCurrentTimestampSeconds()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->finalizeSessions(JLjava/lang/String;)V

    return-void
.end method

.method private doOpenSession()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getCurrentTimestampSeconds()J

    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;

    .line 7
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 9
    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;-><init>(Lcom/google/firebase/crashlytics/internal/common/IdManager;)V

    .line 12
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->toString()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v5, "Opening a new session with ID "

    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 42
    invoke-interface {v3, v2}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->openSession(Ljava/lang/String;)Z

    .line 45
    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeBeginSession(Ljava/lang/String;J)V

    .line 48
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeSessionApp(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeSessionOS(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeSessionDevice(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logFileManager:Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

    .line 59
    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->setCurrentSession(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 64
    invoke-virtual {v3, v2, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->onBeginSession(Ljava/lang/String;J)V

    .line 67
    return-void
.end method

.method private doWriteAppExceptionMarker(J)V
    .registers 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getFilesDir()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v3, ".ae"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 30
    goto :goto_27

    .line 31
    :catch_1e
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 34
    move-result-object p1

    .line 35
    const-string p2, "Could not write app exception marker."

    .line 37
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 40
    :goto_27
    return-void
.end method

.method private static ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;
    .registers 1

    if-nez p0, :cond_5

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_5
    return-object p0
.end method

.method private finalizePreviousNativeSession(Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "Finalizing native report for session "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 27
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;->getMinidumpFile()Ljava/io/File;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_6c

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2b

    .line 43
    goto :goto_6c

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 47
    move-result-wide v1

    .line 48
    new-instance v3, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

    .line 50
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->context:Landroid/content/Context;

    .line 52
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logFileDirectoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    .line 54
    invoke-direct {v3, v4, v5, p1}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;Ljava/lang/String;)V

    .line 57
    new-instance v4, Ljava/io/File;

    .line 59
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getNativeSessionFilesDir()Ljava/io/File;

    .line 62
    move-result-object v5

    .line 63
    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_51

    .line 72
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 75
    move-result-object p1

    .line 76
    const-string v0, "Couldn\'t create native sessions directory"

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 81
    return-void

    .line 82
    :cond_51
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->doWriteAppExceptionMarker(J)V

    .line 85
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getFilesDir()Ljava/io/File;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->getBytesForLog()[B

    .line 92
    move-result-object v2

    .line 93
    invoke-static {v0, p1, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getNativeSessionFiles(Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;Ljava/lang/String;Ljava/io/File;[B)Ljava/util/List;

    .line 96
    move-result-object v0

    .line 97
    invoke-static {v4, v0}, Lcom/google/firebase/crashlytics/internal/common/NativeSessionFileGzipper;->processNativeSessions(Ljava/io/File;Ljava/util/List;)V

    .line 100
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 102
    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->finalizeSessionWithNativeEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 105
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->clearLog()V

    .line 108
    return-void

    .line 109
    :cond_6c
    :goto_6c
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v2, "No minidump data found for session "

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private static firebaseCrashExists()Z
    .registers 1

    .line 1
    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :catch_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->context:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method private getCurrentSessionId()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->listSortedOpenSessionIds()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_14

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return-object v0
.end method

.method private static getCurrentTimestampSeconds()J
    .registers 2

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getTimestampSeconds(Ljava/util/Date;)J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public static getNativeSessionFiles(Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;Ljava/lang/String;Ljava/io/File;[B)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;

    .line 3
    invoke-direct {v0, p2}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;-><init>(Ljava/io/File;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->getUserDataFileForSession(Ljava/lang/String;)Ljava/io/File;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->getKeysFileForSession(Ljava/lang/String;)Ljava/io/File;

    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;

    .line 21
    const-string v2, "logs_file"

    .line 23
    const-string v3, "logs"

    .line 25
    invoke-direct {v1, v2, v3, p3}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;

    .line 33
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;->getMetadataFile()Ljava/io/File;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "crash_meta_file"

    .line 39
    const-string v3, "metadata"

    .line 41
    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 44
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;

    .line 49
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;->getSessionFile()Ljava/io/File;

    .line 52
    move-result-object v1

    .line 53
    const-string v2, "session_meta_file"

    .line 55
    const-string v3, "session"

    .line 57
    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 60
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;

    .line 65
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;->getAppFile()Ljava/io/File;

    .line 68
    move-result-object v1

    .line 69
    const-string v2, "app_meta_file"

    .line 71
    const-string v3, "app"

    .line 73
    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 76
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;

    .line 81
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;->getDeviceFile()Ljava/io/File;

    .line 84
    move-result-object v1

    .line 85
    const-string v2, "device_meta_file"

    .line 87
    const-string v3, "device"

    .line 89
    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 92
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;

    .line 97
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;->getOsFile()Ljava/io/File;

    .line 100
    move-result-object v1

    .line 101
    const-string v2, "os_meta_file"

    .line 103
    const-string v3, "os"

    .line 105
    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 108
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;

    .line 113
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;->getMinidumpFile()Ljava/io/File;

    .line 116
    move-result-object p0

    .line 117
    const-string v1, "minidump_file"

    .line 119
    const-string v2, "minidump"

    .line 121
    invoke-direct {p3, v1, v2, p0}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 124
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;

    .line 129
    const-string p3, "user_meta_file"

    .line 131
    const-string v1, "user"

    .line 133
    invoke-direct {p0, p3, v1, p2}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 136
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;

    .line 141
    const-string p2, "keys_file"

    .line 143
    const-string p3, "keys"

    .line 145
    invoke-direct {p0, p2, p3, p1}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 148
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-object v0
.end method

.method private static getTimestampSeconds(Ljava/util/Date;)J
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public static synthetic lambda$static$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string p0, ".ae"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static listFilesMatching(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->listFilesMatching(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private logAnalyticsAppExceptionEvent(J)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->firebaseCrashExists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 10
    move-result-object p1

    .line 11
    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 28
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$10;

    .line 30
    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$10;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;J)V

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private logAnalyticsAppExceptionEvents()Lcom/google/android/gms/tasks/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->listAppExceptionMarkerFiles()[Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_b
    if-ge v3, v2, :cond_42

    .line 14
    aget-object v4, v1, v3

    .line 16
    :try_start_f
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x3

    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 28
    move-result-wide v5

    .line 29
    invoke-direct {p0, v5, v6}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logAnalyticsAppExceptionEvent(J)Lcom/google/android/gms/tasks/Task;

    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_23} :catch_24

    .line 36
    goto :goto_3c

    .line 37
    :catch_24
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 40
    move-result-object v5

    .line 41
    const-string v6, "Could not parse timestamp from file "

    .line 43
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 61
    :goto_3c
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 66
    goto :goto_b

    .line 67
    :cond_42
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method

.method private waitForReportAction()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->isAutomaticDataCollectionEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1f

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Automatic data collection is enabled. Allowing upload."

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsAvailable:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_1f
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "Automatic data collection is disabled."

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "Notifying that unsent reports are available."

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsAvailable:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 52
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 59
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->waitForAutomaticDataCollectionEnabled()Lcom/google/android/gms/tasks/Task;

    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$3;

    .line 65
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$3;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 71
    move-result-object v0

    .line 72
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 75
    move-result-object v1

    .line 76
    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    .line 78
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportActionProvided:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->race(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method

.method private writeBeginSession(Ljava/lang/String;J)V
    .registers 8

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "Crashlytics Android SDK/%s"

    .line 15
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 21
    invoke-interface {v1, p1, v0, p2, p3}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V

    .line 24
    return-void
.end method

.method private writeSessionApp(Ljava/lang/String;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    .line 6
    move-result-object v3

    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->appData:Lcom/google/firebase/crashlytics/internal/common/AppData;

    .line 9
    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/common/AppData;->versionCode:Ljava/lang/String;

    .line 11
    iget-object v5, v0, Lcom/google/firebase/crashlytics/internal/common/AppData;->versionName:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getCrashlyticsInstallId()Ljava/lang/String;

    .line 18
    move-result-object v6

    .line 19
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->appData:Lcom/google/firebase/crashlytics/internal/common/AppData;

    .line 21
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/AppData;->installerPackageName:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->getId()I

    .line 30
    move-result v7

    .line 31
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 33
    iget-object v8, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unityVersion:Ljava/lang/String;

    .line 35
    move-object v2, p1

    .line 36
    invoke-interface/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    return-void
.end method

.method private writeSessionDevice(Ljava/lang/String;)V
    .registers 18

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/StatFs;

    .line 7
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getCpuArchitectureInt()I

    .line 21
    move-result v5

    .line 22
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    .line 31
    move-result v7

    .line 32
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getTotalRamInBytes()J

    .line 35
    move-result-wide v8

    .line 36
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    .line 39
    move-result v2

    .line 40
    int-to-long v2, v2

    .line 41
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    .line 44
    move-result v1

    .line 45
    int-to-long v10, v1

    .line 46
    mul-long/2addr v10, v2

    .line 47
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    .line 50
    move-result v12

    .line 51
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getDeviceState(Landroid/content/Context;)I

    .line 54
    move-result v13

    .line 55
    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 57
    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p0

    .line 61
    iget-object v3, v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 63
    move-object/from16 v4, p1

    .line 65
    invoke-interface/range {v3 .. v15}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private writeSessionOS(Ljava/lang/String;)V
    .registers 6

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isRooted(Landroid/content/Context;)Z

    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 15
    invoke-interface {v3, p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public checkForUnsentReports()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->checkForUnsentReportsCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "checkForUnsentReports should only be called once per execution."

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsAvailable:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public deleteUnsentReports()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportActionProvided:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsHandled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public didCrashOnPreviousExecution()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->crashMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->isPresent()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1a

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getCurrentSessionId()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_18

    .line 16
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 18
    invoke-interface {v2, v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->hasCrashDataForSession(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v1, 0x0

    .line 26
    :goto_19
    return v1

    .line 27
    :cond_1a
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 30
    move-result-object v0

    .line 31
    const-string v2, "Found previous crash marker."

    .line 33
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->crashMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 38
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->remove()Z

    .line 41
    return v1
.end method

.method public doCloseSessions()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->doCloseSessions(Z)V

    return-void
.end method

.method public enableExceptionHandling(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->openSession()V

    .line 4
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V

    .line 9
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;

    .line 11
    invoke-direct {v1, v0, p2, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler$CrashListener;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 14
    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->crashHandler:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;

    .line 16
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 19
    return-void
.end method

.method public finalizeSessions()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->checkRunningOnThread()V

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->isHandlingException()Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 16
    move-result-object v0

    .line 17
    const-string v2, "Skipping session finalization because a crash has already occurred."

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 22
    return v1

    .line 23
    :cond_16
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 26
    move-result-object v0

    .line 27
    const-string v2, "Finalizing previously open sessions."

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    .line 33
    :try_start_20
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->doCloseSessions(Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2d

    .line 36
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 39
    move-result-object v1

    .line 40
    const-string v2, "Closed all previously open sessions"

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 45
    return v0

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 50
    move-result-object v2

    .line 51
    const-string v3, "Unable to finalize previously open sessions."

    .line 53
    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return v1
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getFilesDir()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNativeSessionFilesDir()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getFilesDir()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "native-sessions"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public getUserMetadata()Lcom/google/firebase/crashlytics/internal/common/UserMetadata;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->userMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 3
    return-object v0
.end method

.method public declared-synchronized handleUncaughtException(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "Crashlytics is handling uncaught exception \""

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "\" from thread "

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 38
    new-instance v4, Ljava/util/Date;

    .line 40
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 45
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;

    .line 47
    move-object v2, v1

    .line 48
    move-object v3, p0

    .line 49
    move-object v5, p3

    .line 50
    move-object v6, p2

    .line 51
    move-object v7, p1

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$2;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->submitTask(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 58
    move-result-object p1
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_48

    .line 59
    :try_start_3a
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->awaitEvenIfOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_48

    .line 62
    goto :goto_46

    .line 63
    :catch_3e
    move-exception p1

    .line 64
    :try_start_3f
    const-string p2, "WILLIS"

    .line 66
    const-string p3, "ERROR"

    .line 68
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_48

    .line 71
    :goto_46
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public isHandlingException()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->crashHandler:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->isHandlingException()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public listAppExceptionMarkerFiles()[Ljava/io/File;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->APP_EXCEPTION_MARKER_FILTER:Ljava/io/FilenameFilter;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public listNativeSessionFileDirectories()[Ljava/io/File;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getNativeSessionFilesDir()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public openSession()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$9;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$9;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->submit(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    return-void
.end method

.method public sendUnsentReports()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportActionProvided:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsHandled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->userMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_f

    .line 6
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->userMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->getCustomKeys()Ljava/util/Map;

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->cacheKeyData(Ljava/util/Map;)V

    .line 15
    return-void

    .line 16
    :catch_f
    move-exception p1

    .line 17
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->context:Landroid/content/Context;

    .line 19
    if-eqz p2, :cond_1c

    .line 21
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isAppDebuggable(Landroid/content/Context;)Z

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    throw p1

    .line 29
    :cond_1c
    :goto_1c
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 32
    move-result-object p1

    .line 33
    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    .line 35
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->userMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->setUserId(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->userMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 8
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->cacheUserData(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    .line 11
    return-void
.end method

.method public submitAllReports(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->hasReportsToSend()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1e

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 12
    move-result-object p1

    .line 13
    const-string v0, "No reports are available."

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsAvailable:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1e
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 34
    move-result-object v0

    .line 35
    const-string v1, "Unsent reports are available."

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->waitForReportAction()Lcom/google/android/gms/tasks/Task;

    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$4;

    .line 46
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$4;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Lcom/google/android/gms/tasks/Task;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 8
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;

    .line 10
    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->submit(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 16
    return-void
.end method

.method public writeToLog(JLjava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$5;

    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$5;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;JLjava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->submit(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    return-void
.end method
