.class Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->init(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;Lcom/google/firebase/analytics/connector/AnalyticsConnector;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

.field public final synthetic val$finishCoreInBackground:Z

.field public final synthetic val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;


# direct methods
.method public constructor <init>(ZLcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;->val$finishCoreInBackground:Z

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;->val$core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;->val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3

    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;->val$finishCoreInBackground:Z

    if-eqz v0, :cond_b

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;->val$core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$2;->val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->doBackgroundInitializationAsync(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/android/gms/tasks/Task;

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method
