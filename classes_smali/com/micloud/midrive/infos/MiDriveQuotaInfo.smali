.class public Lcom/micloud/midrive/infos/MiDriveQuotaInfo;
.super Ljava/lang/Object;
.source "MiDriveQuotaInfo.java"


# instance fields
.field public final total:J

.field public final used:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;->used:J

    .line 6
    iput-wide p3, p0, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;->total:J

    .line 8
    return-void
.end method
