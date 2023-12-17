.class public Lcom/micloud/midrive/infos/TrafficSpeedInfo;
.super Ljava/lang/Object;
.source "TrafficSpeedInfo.java"


# instance fields
.field public mLastTime:J

.field public mTotalBytes:J

.field public final mUid:I

.field public speed:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mUid:I

    .line 10
    return-void
.end method


# virtual methods
.method public updateData(JJ)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mTotalBytes:J

    .line 3
    iput-wide p3, p0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mLastTime:J

    .line 5
    return-void
.end method
