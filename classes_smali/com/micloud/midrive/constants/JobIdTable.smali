.class public Lcom/micloud/midrive/constants/JobIdTable;
.super Ljava/lang/Object;
.source "JobIdTable.java"


# static fields
.field public static final JOB_ID_SYNC_SESSION_SERVICE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/constants/JobIdTable;->JOB_ID_SYNC_SESSION_SERVICE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
