.class public Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"


# static fields
.field private static final APP_EXCEPTION_CALLBACK_TIMEOUT_MS:I = 0x1f4

.field public static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"

.field private static final FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN:Ljava/lang/String; = "clx"

.field private static final LEGACY_CRASH_ANALYTICS_ORIGIN:Ljava/lang/String; = "crash"


# instance fields
.field private final core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 6
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 13
    if-eqz v0, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 18
    const-string v1, "FirebaseCrashlytics component is not present."

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public static init(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;Lcom/google/firebase/analytics/connector/AnalyticsConnector;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .registers 15

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Initializing Firebase Crashlytics "

    .line 7
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->i(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 35
    invoke-direct {v1, v2, v0, p1}, Lcom/google/firebase/crashlytics/internal/common/IdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    .line 38
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 40
    invoke-direct {p1, p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 43
    if-nez p2, :cond_31

    .line 45
    new-instance p2, Lcom/google/firebase/crashlytics/internal/MissingNativeComponent;

    .line 47
    invoke-direct {p2}, Lcom/google/firebase/crashlytics/internal/MissingNativeComponent;-><init>()V

    .line 50
    :cond_31
    move-object v6, p2

    .line 51
    if-eqz p3, :cond_7d

    .line 53
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 56
    move-result-object p2

    .line 57
    const-string v0, "Firebase Analytics is available."

    .line 59
    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 62
    new-instance p2, Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;

    .line 64
    invoke-direct {p2, p3}, Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;-><init>(Lcom/google/firebase/analytics/connector/AnalyticsConnector;)V

    .line 67
    new-instance v0, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;

    .line 69
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;-><init>()V

    .line 72
    invoke-static {p3, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->subscribeToAnalyticsEvents(Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    .line 75
    move-result-object p3

    .line 76
    if-eqz p3, :cond_6c

    .line 78
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 81
    move-result-object p3

    .line 82
    const-string v3, "Firebase Analytics listener registered successfully."

    .line 84
    invoke-virtual {p3, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 87
    new-instance p3, Lcom/google/firebase/crashlytics/internal/analytics/BreadcrumbAnalyticsEventReceiver;

    .line 89
    invoke-direct {p3}, Lcom/google/firebase/crashlytics/internal/analytics/BreadcrumbAnalyticsEventReceiver;-><init>()V

    .line 92
    new-instance v3, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;

    .line 94
    const/16 v4, 0x1f4

    .line 96
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-direct {v3, p2, v4, v5}, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;-><init>(Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;ILjava/util/concurrent/TimeUnit;)V

    .line 101
    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->setBreadcrumbEventReceiver(Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;)V

    .line 104
    invoke-virtual {v0, v3}, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->setCrashlyticsOriginEventReceiver(Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;)V

    .line 107
    move-object p2, v3

    .line 108
    goto :goto_7a

    .line 109
    :cond_6c
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 112
    move-result-object p3

    .line 113
    const-string v0, "Firebase Analytics listener registration failed."

    .line 115
    invoke-virtual {p3, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 118
    new-instance p3, Lcom/google/firebase/crashlytics/internal/breadcrumbs/DisabledBreadcrumbSource;

    .line 120
    invoke-direct {p3}, Lcom/google/firebase/crashlytics/internal/breadcrumbs/DisabledBreadcrumbSource;-><init>()V

    .line 123
    :goto_7a
    move-object v9, p2

    .line 124
    move-object v8, p3

    .line 125
    goto :goto_92

    .line 126
    :cond_7d
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 129
    move-result-object p2

    .line 130
    const-string p3, "Firebase Analytics is unavailable."

    .line 132
    invoke-virtual {p2, p3}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 135
    new-instance p2, Lcom/google/firebase/crashlytics/internal/breadcrumbs/DisabledBreadcrumbSource;

    .line 137
    invoke-direct {p2}, Lcom/google/firebase/crashlytics/internal/breadcrumbs/DisabledBreadcrumbSource;-><init>()V

    .line 140
    new-instance p3, Lcom/google/firebase/crashlytics/internal/analytics/UnavailableAnalyticsEventLogger;

    .line 142
    invoke-direct {p3}, Lcom/google/firebase/crashlytics/internal/analytics/UnavailableAnalyticsEventLogger;-><init>()V

    .line 145
    move-object v8, p2

    .line 146
    move-object v9, p3

    .line 147
    :goto_92
    const-string p2, "Crashlytics Exception Handler"

    .line 149
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->buildSingleThreadExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 152
    move-result-object v10

    .line 153
    new-instance p2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 155
    move-object v3, p2

    .line 156
    move-object v4, p0

    .line 157
    move-object v5, v1

    .line 158
    move-object v7, p1

    .line 159
    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource;Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;Ljava/util/concurrent/ExecutorService;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    .line 169
    move-result-object v3

    .line 170
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getMappingFileId(Landroid/content/Context;)Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 177
    move-result-object p3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v4, "Mapping file ID is: "

    .line 185
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p3, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 198
    new-instance p3, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;

    .line 200
    invoke-direct {p3, v2}, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;-><init>(Landroid/content/Context;)V

    .line 203
    :try_start_ca
    invoke-static {v2, v1, v3, p0, p3}, Lcom/google/firebase/crashlytics/internal/common/AppData;->create(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/IdManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;)Lcom/google/firebase/crashlytics/internal/common/AppData;

    .line 206
    move-result-object p0
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ca .. :try_end_ce} :catch_117

    .line 207
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 210
    move-result-object p3

    .line 211
    const-string v0, "Installer package name is: "

    .line 213
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    move-result-object v0

    .line 217
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->installerPackageName:Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p3, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 229
    const-string p3, "com.google.firebase.crashlytics.startup"

    .line 231
    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->buildSingleThreadExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 234
    move-result-object p3

    .line 235
    new-instance v5, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    .line 237
    invoke-direct {v5}, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;-><init>()V

    .line 240
    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->versionCode:Ljava/lang/String;

    .line 242
    iget-object v7, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->versionName:Ljava/lang/String;

    .line 244
    move-object v4, v1

    .line 245
    move-object v8, p1

    .line 246
    invoke-static/range {v2 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->create(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->loadSettingsData(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 253
    move-result-object v0

    .line 254
    new-instance v1, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;

    .line 256
    invoke-direct {v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;-><init>()V

    .line 259
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 262
    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->onPreExecute(Lcom/google/firebase/crashlytics/internal/common/AppData;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Z

    .line 265
    move-result p0

    .line 266
    new-instance v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;

    .line 268
    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;-><init>(ZLcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V

    .line 271
    invoke-static {p3, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 274
    new-instance p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 276
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V

    .line 279
    return-object p0

    .line 280
    :catch_117
    move-exception p0

    .line 281
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 284
    move-result-object p1

    .line 285
    const-string p2, "Could not retrieve app info, initialization failed."

    .line 287
    invoke-virtual {p1, p2, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    const/4 p0, 0x0

    .line 291
    return-object p0
.end method

.method private static subscribeToAnalyticsEvents(Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    .registers 4

    .line 1
    const-string v0, "clx"

    .line 3
    invoke-interface {p0, v0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->registerAnalyticsConnectorListener(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_22

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 18
    const-string v0, "crash"

    .line 20
    invoke-interface {p0, v0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->registerAnalyticsConnectorListener(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_22

    .line 26
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 29
    move-result-object p0

    .line 30
    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 35
    :cond_22
    return-object v0
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
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->checkForUnsentReports()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public deleteUnsentReports()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->deleteUnsentReports()Lcom/google/android/gms/tasks/Task;

    .line 6
    return-void
.end method

.method public didCrashOnPreviousExecution()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->didCrashOnPreviousExecution()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->log(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public recordException(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    if-nez p1, :cond_c

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "Crashlytics is ignoring a request to log a null exception."

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->logException(Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method

.method public sendUnsentReports()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->sendUnsentReports()Lcom/google/android/gms/tasks/Task;

    .line 6
    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Ljava/lang/Boolean;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setCrashlyticsCollectionEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setCrashlyticsCollectionEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;D)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;F)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;I)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;J)V
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->setUserId(Ljava/lang/String;)V

    .line 6
    return-void
.end method
