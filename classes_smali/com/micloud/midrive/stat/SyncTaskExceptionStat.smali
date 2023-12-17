.class public Lcom/micloud/midrive/stat/SyncTaskExceptionStat;
.super Ljava/lang/Object;
.source "SyncTaskExceptionStat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Exception;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->lambda$recordExceptionEvent$0(Ljava/lang/String;Ljava/lang/Exception;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void
.end method

.method private static synthetic lambda$recordExceptionEvent$0(Ljava/lang/String;Ljava/lang/Exception;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/stat/StatUtils;->getFailMsgByException(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p2, p0, p1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public static recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/filemanager/c;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lcom/android/fileexplorer/filemanager/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    const-string p0, "sync_task_exception_collection"

    .line 9
    const-string p1, "1096.0.0.0.27293"

    .line 11
    invoke-static {p0, v0, p1}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    .line 14
    return-void
.end method
