.class public Lcom/xiaomi/opensdk/pdc/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;,
        Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;,
        Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    }
.end annotation


# static fields
.field public static final NULL_ETAG:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/opensdk/pdc/Constants;->NULL_ETAG:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
