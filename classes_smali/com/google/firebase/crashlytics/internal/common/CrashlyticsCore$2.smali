.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->finishInitSynchronously(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

.field public final synthetic val$settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;->val$settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;->val$settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 5
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->access$000(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/android/gms/tasks/Task;

    .line 8
    return-void
.end method
