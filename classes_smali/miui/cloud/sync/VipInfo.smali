.class public Lmiui/cloud/sync/VipInfo;
.super Ljava/lang/Object;
.source "VipInfo.java"


# instance fields
.field public final autoRenew:Z

.field public final expireTime:J

.field public final level:Ljava/lang/String;

.field public final vipName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiui/cloud/sync/VipInfo;->vipName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lmiui/cloud/sync/VipInfo;->level:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lmiui/cloud/sync/VipInfo;->expireTime:J

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiui/cloud/sync/VipInfo;->autoRenew:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lmiui/cloud/sync/VipInfo;->vipName:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lmiui/cloud/sync/VipInfo;->level:Ljava/lang/String;

    .line 9
    iput-wide p3, p0, Lmiui/cloud/sync/VipInfo;->expireTime:J

    .line 10
    iput-boolean p5, p0, Lmiui/cloud/sync/VipInfo;->autoRenew:Z

    return-void
.end method
