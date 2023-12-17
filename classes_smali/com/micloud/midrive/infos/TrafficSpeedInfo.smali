.class public Lcom/micloud/midrive/infos/TrafficSpeedInfo;
.super Ljava/lang/Object;
.source "TrafficSpeedInfo.java"


# instance fields
.field public mLastTime:J

.field public mTotalBytes:J

.field public final mUid:I

.field public speed:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mUid:I

    return-void
.end method


# virtual methods
.method public updateData(JJ)V
    .registers 5

    iput-wide p1, p0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mTotalBytes:J

    iput-wide p3, p0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mLastTime:J

    return-void
.end method
