.class public Lcom/micloud/midrive/helper/LocalWriteActionHelper;
.super Lcom/micloud/midrive/helper/ThreadSafeActionHelper;
.source "LocalWriteActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/helper/LocalWriteActionHelper$SingletonHolder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/helper/LocalWriteActionHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;
    .registers 1

    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper$SingletonHolder;->access$100()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    move-result-object v0

    return-object v0
.end method
