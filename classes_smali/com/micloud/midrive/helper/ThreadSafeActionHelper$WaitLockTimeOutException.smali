.class public Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException;
.super Ljava/lang/Exception;
.source "ThreadSafeActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/helper/ThreadSafeActionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitLockTimeOutException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method
