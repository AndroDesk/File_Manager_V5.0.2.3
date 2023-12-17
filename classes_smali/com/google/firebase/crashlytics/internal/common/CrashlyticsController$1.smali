.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$1;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler$CrashListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->enableExceptionHandling(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onUncaughtException(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->handleUncaughtException(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 6
    return-void
.end method
