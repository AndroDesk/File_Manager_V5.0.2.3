.class public Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException;
.super Ljava/lang/Exception;
.source "BusyWaitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmicloud/compat/v18/utils/BusyWaitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotAvailableException"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
