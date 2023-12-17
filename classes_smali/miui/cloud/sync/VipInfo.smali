.class public Lmiui/cloud/sync/VipInfo;
.super Ljava/lang/Object;
.source "VipInfo.java"


# instance fields
.field public final autoRenew:Z

.field public final expireTime:J

.field public final level:Ljava/lang/String;

.field public final vipName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/cloud/sync/VipInfo;->vipName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/cloud/sync/VipInfo;->level:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lmiui/cloud/sync/VipInfo;->expireTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/cloud/sync/VipInfo;->autoRenew:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/cloud/sync/VipInfo;->vipName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/cloud/sync/VipInfo;->level:Ljava/lang/String;

    iput-wide p3, p0, Lmiui/cloud/sync/VipInfo;->expireTime:J

    iput-boolean p5, p0, Lmiui/cloud/sync/VipInfo;->autoRenew:Z

    return-void
.end method
