.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field public final synthetic val$ex:Ljava/lang/Throwable;

.field public final synthetic val$thread:Ljava/lang/Thread;

.field public final synthetic val$time:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->val$time:Ljava/util/Date;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->val$ex:Ljava/lang/Throwable;

    .line 7
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->val$thread:Ljava/lang/Thread;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->isHandlingException()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2d

    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->val$time:Ljava/util/Date;

    .line 11
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$000(Ljava/util/Date;)J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 17
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$100(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_20

    .line 23
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "Tried to write a non-fatal exception while no session was open."

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 32
    return-void

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 35
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$300(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->val$ex:Ljava/lang/Throwable;

    .line 41
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$6;->val$thread:Ljava/lang/Thread;

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->persistNonFatalEvent(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 46
    :cond_2d
    return-void
.end method
