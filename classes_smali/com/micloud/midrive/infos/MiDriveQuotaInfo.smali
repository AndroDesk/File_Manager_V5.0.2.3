.class public Lcom/micloud/midrive/infos/MiDriveQuotaInfo;
.super Ljava/lang/Object;
.source "MiDriveQuotaInfo.java"


# instance fields
.field public final total:J

.field public final used:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;->used:J

    iput-wide p3, p0, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;->total:J

    return-void
.end method
