.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->cacheUserData(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
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
.field public final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field public final synthetic val$userMetaData:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .registers 3

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;->val$userMetaData:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$100(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v2, "Tried to cache user data while no session was open."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    return-object v1

    :cond_13
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$300(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->persistUserId(Ljava/lang/String;)V

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$7;->val$userMetaData:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->writeUserData(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    return-object v1
.end method
