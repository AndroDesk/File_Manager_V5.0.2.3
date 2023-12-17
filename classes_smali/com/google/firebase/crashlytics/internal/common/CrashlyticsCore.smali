.class public Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;
    }
.end annotation


# static fields
.field public static final CRASHLYTICS_REQUIRE_BUILD_ID:Ljava/lang/String; = "com.crashlytics.RequireBuildId"

.field public static final CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT:Z = true

.field public static final CRASH_MARKER_FILE_NAME:Ljava/lang/String; = "crash_marker"

.field public static final DEFAULT_MAIN_HANDLER_TIMEOUT_SEC:I = 0x4

.field private static final INITIALIZATION_MARKER_FILE_NAME:Ljava/lang/String; = "initialization_marker"

.field public static final MAX_STACK_SIZE:I = 0x400

.field private static final MISSING_BUILD_ID_MSG:Ljava/lang/String; = "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

.field public static final NUM_STACK_REPETITIONS_ALLOWED:I = 0xa


# instance fields
.field private final analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;

.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

.field private final breadcrumbSource:Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource;

.field private final context:Landroid/content/Context;

.field private controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field private final crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

.field private crashMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

.field private final dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

.field private didCrashOnPreviousExecution:Z

.field private final idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

.field private initializationMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

.field private final nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

.field private final startTime:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource;Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;Ljava/util/concurrent/ExecutorService;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->app:Lcom/google/firebase/FirebaseApp;

    .line 6
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->context:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 16
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 18
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->breadcrumbSource:Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource;

    .line 20
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;

    .line 22
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 24
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 26
    invoke-direct {p1, p7}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;-><init>(Ljava/util/concurrent/Executor;)V

    .line 29
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide p1

    .line 35
    iput-wide p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->startTime:J

    .line 37
    return-void
.end method

.method public static synthetic access$000(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->doBackgroundInitialization(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/android/gms/tasks/Task;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->initializationMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    return-object p0
.end method

.method private checkForPreviousCrash()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$4;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$4;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->submit(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    move-result-object v0

    .line 12
    :try_start_b
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/Utils;->awaitEvenIfOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_1a

    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->didCrashOnPreviousExecution:Z

    .line 26
    return-void

    .line 27
    :catch_1a
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->didCrashOnPreviousExecution:Z

    .line 30
    return-void
.end method

.method private doBackgroundInitialization(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->markInitializationStarted()V

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->breadcrumbSource:Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource;

    .line 8
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbHandler;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v1, v2}, Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource;->registerBreadcrumbHandler(Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbHandler;)V

    .line 15
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;->getSettings()Lcom/google/firebase/crashlytics/internal/settings/model/Settings;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/settings/model/Settings;->getFeaturesData()Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 22
    move-result-object v1

    .line 23
    iget-boolean v1, v1, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectReports:Z

    .line 25
    if-nez v1, :cond_2e

    .line 27
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 42
    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_4f
    .catchall {:try_start_5 .. :try_end_2a} :catchall_4d

    .line 43
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->markInitializationComplete()V

    .line 46
    return-object p1

    .line 47
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 49
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->finalizeSessions()Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3f

    .line 55
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 58
    move-result-object v0

    .line 59
    const-string v1, "Could not finalize previous sessions."

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 64
    :cond_3f
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 66
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;->getAppSettings()Lcom/google/android/gms/tasks/Task;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->submitAllReports(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 73
    move-result-object p1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_49} :catch_4f
    .catchall {:try_start_2e .. :try_end_49} :catchall_4d

    .line 74
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->markInitializationComplete()V

    .line 77
    return-object p1

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    goto :goto_61

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    :try_start_50
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 84
    move-result-object v0

    .line 85
    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 93
    move-result-object p1
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_4d

    .line 94
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->markInitializationComplete()V

    .line 97
    return-object p1

    .line 98
    :goto_61
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->markInitializationComplete()V

    .line 101
    throw p1
.end method

.method private finishInitSynchronously(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V

    .line 6
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 21
    const-wide/16 v0, 0x4

    .line 23
    :try_start_16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1b} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_3c

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Crashlytics timed out during initialization."

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    goto :goto_3c

    .line 40
    :catch_27
    move-exception p1

    .line 41
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "Problem encountered during Crashlytics initialization."

    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    goto :goto_3c

    .line 51
    :catch_32
    move-exception p1

    .line 52
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 55
    move-result-object v0

    .line 56
    const-string v1, "Crashlytics was interrupted during initialization."

    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :goto_3c
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "17.3.1"

    return-object v0
.end method

.method public static isBuildIdValid(Ljava/lang/String;Z)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_d

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 7
    move-result-object p0

    .line 8
    const-string p1, "Configured not to require a build ID."

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_14

    .line 20
    return v0

    .line 21
    :cond_14
    const-string p0, "FirebaseCrashlytics"

    .line 23
    const-string p1, "."

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v0, ".     |  | "

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, ".     |  |"

    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v1, ".   \\ |  | /"

    .line 43
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v1, ".    \\    /"

    .line 48
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v1, ".     \\  /"

    .line 53
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v1, ".      \\/"

    .line 58
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    .line 66
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v1, ".      /\\"

    .line 74
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, ".     /  \\"

    .line 79
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, ".    /    \\"

    .line 84
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, ".   / |  | \\"

    .line 89
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 p0, 0x0

    .line 105
    return p0
.end method


# virtual methods
.method public checkForUnsentReports()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->checkForUnsentReports()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public deleteUnsentReports()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->deleteUnsentReports()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public didCrashOnPreviousExecution()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->didCrashOnPreviousExecution:Z

    .line 3
    return v0
.end method

.method public didPreviousInitializationFail()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->initializationMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->isPresent()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public doBackgroundInitializationAsync(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$1;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V

    .line 8
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->callTask(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getController()Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->startTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 10
    invoke-virtual {v2, v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeToLog(JLjava/lang/String;)V

    .line 13
    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method

.method public markInitializationComplete()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$3;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$3;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->submit(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    return-void
.end method

.method public markInitializationStarted()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->checkRunningOnThread()V

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->initializationMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->create()Z

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Initialization marker file created."

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public onPreExecute(Lcom/google/firebase/crashlytics/internal/common/AppData;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Z
    .registers 29

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p2

    .line 5
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->context:Landroid/content/Context;

    .line 7
    const-string v3, "com.crashlytics.RequireBuildId"

    .line 9
    const/4 v10, 0x1

    .line 10
    invoke-static {v2, v3, v10}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 13
    move-result v2

    .line 14
    move-object/from16 v15, p1

    .line 16
    iget-object v3, v15, Lcom/google/firebase/crashlytics/internal/common/AppData;->buildId:Ljava/lang/String;

    .line 18
    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->isBuildIdValid(Ljava/lang/String;Z)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_ce

    .line 24
    const/16 v25, 0x0

    .line 26
    :try_start_19
    new-instance v14, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;

    .line 28
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->context:Landroid/content/Context;

    .line 30
    invoke-direct {v14, v2}, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 35
    const-string v3, "crash_marker"

    .line 37
    invoke-direct {v2, v3, v14}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;-><init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V

    .line 40
    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->crashMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 42
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 44
    const-string v3, "initialization_marker"

    .line 46
    invoke-direct {v2, v3, v14}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;-><init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V

    .line 49
    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->initializationMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 51
    new-instance v19, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 53
    invoke-direct/range {v19 .. v19}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;-><init>()V

    .line 56
    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;

    .line 58
    invoke-direct {v13, v14}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;-><init>(Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V

    .line 61
    new-instance v12, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

    .line 63
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->context:Landroid/content/Context;

    .line 65
    invoke-direct {v12, v2, v13}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;)V

    .line 68
    new-instance v8, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;

    .line 70
    const/16 v2, 0x400

    .line 72
    new-array v3, v10, [Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;

    .line 74
    new-instance v4, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;

    .line 76
    const/16 v5, 0xa

    .line 78
    invoke-direct {v4, v5}, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;-><init>(I)V

    .line 81
    aput-object v4, v3, v25

    .line 83
    invoke-direct {v8, v2, v3}, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;-><init>(I[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;)V

    .line 86
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->context:Landroid/content/Context;

    .line 88
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 90
    move-object v4, v14

    .line 91
    move-object/from16 v5, p1

    .line 93
    move-object v6, v12

    .line 94
    move-object/from16 v7, v19

    .line 96
    move-object/from16 v9, p2

    .line 98
    invoke-static/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->create(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;Lcom/google/firebase/crashlytics/internal/common/AppData;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 101
    move-result-object v22

    .line 102
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 104
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->context:Landroid/content/Context;

    .line 106
    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    .line 108
    iget-object v5, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 110
    iget-object v6, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 112
    iget-object v7, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->crashMarker:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;

    .line 114
    iget-object v8, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->nativeComponent:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 116
    iget-object v9, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;

    .line 118
    move-object v11, v2

    .line 119
    move-object/from16 v20, v12

    .line 121
    move-object v12, v3

    .line 122
    move-object v3, v13

    .line 123
    move-object v13, v4

    .line 124
    move-object v4, v14

    .line 125
    move-object v14, v5

    .line 126
    move-object v15, v6

    .line 127
    move-object/from16 v16, v4

    .line 129
    move-object/from16 v17, v7

    .line 131
    move-object/from16 v18, p1

    .line 133
    move-object/from16 v21, v3

    .line 135
    move-object/from16 v23, v8

    .line 137
    move-object/from16 v24, v9

    .line 139
    invoke-direct/range {v11 .. v24}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;Lcom/google/firebase/crashlytics/internal/common/AppData;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;)V

    .line 142
    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->didPreviousInitializationFail()Z

    .line 147
    move-result v2

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->checkForPreviousCrash()V

    .line 151
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 153
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v3, v4, v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->enableExceptionHandling(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V

    .line 160
    if-eqz v2, :cond_b6

    .line 162
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->context:Landroid/content/Context;

    .line 164
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->canTryConnection(Landroid/content/Context;)Z

    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_b6

    .line 170
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 173
    move-result-object v2

    .line 174
    const-string v3, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 176
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 179
    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->finishInitSynchronously(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_b5} :catch_c0

    .line 182
    return v25

    .line 183
    :cond_b6
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 186
    move-result-object v0

    .line 187
    const-string v2, "Exception handling initialization successful"

    .line 189
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 192
    return v10

    .line 193
    :catch_c0
    move-exception v0

    .line 194
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 197
    move-result-object v2

    .line 198
    const-string v3, "Crashlytics was not started due to an exception during initialization"

    .line 200
    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    const/4 v0, 0x0

    .line 204
    iput-object v0, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 206
    return v25

    .line 207
    :cond_ce
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 209
    const-string v2, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    .line 211
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    throw v0
.end method

.method public sendUnsentReports()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->sendUnsentReports()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setCrashlyticsCollectionEnabled(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setCrashlyticsDataCollectionEnabled(Ljava/lang/Boolean;)V

    .line 6
    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->controller:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->setUserId(Ljava/lang/String;)V

    .line 6
    return-void
.end method
