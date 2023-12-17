.class public Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
.super Ljava/lang/Object;
.source "MiCloudStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/sync/MiCloudStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuotaInfo"
.end annotation


# static fields
.field public static final WARN_FULL:Ljava/lang/String; = "full"

.field public static final WARN_LOW_PERCENT:Ljava/lang/String; = "low_percent"

.field public static final WARN_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:J

.field private mUsed:J

.field private mWarn:Ljava/lang/String;

.field private mYearlyPackageCreateTime:J

.field private mYearlyPackageExpireTime:J

.field private mYearlyPackageSize:J

.field private mYearlyPackageType:Ljava/lang/String;

.field public final synthetic this$0:Lmiui/cloud/sync/MiCloudStatusInfo;


# direct methods
.method public constructor <init>(Lmiui/cloud/sync/MiCloudStatusInfo;JJLjava/lang/String;Ljava/lang/String;JJJ)V
    .registers 14

    .line 1
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->this$0:Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    .line 8
    iput-wide p4, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    .line 10
    iput-object p6, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    .line 14
    iput-wide p8, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    .line 16
    iput-wide p10, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    .line 18
    iput-wide p12, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public addItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public getItemInfoList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getTotal()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    .line 3
    return-wide v0
.end method

.method public getUsed()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    .line 3
    return-wide v0
.end method

.method public getWarn()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getYearlyPackageCreateTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    .line 3
    return-wide v0
.end method

.method public getYearlyPackageExpireTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    .line 3
    return-wide v0
.end method

.method public getYearlyPackageSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    .line 3
    return-wide v0
.end method

.method public getYearlyPackageType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isSpaceFull()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "full"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isSpaceLowPercent()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "low_percent"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "QuotaInfo{mTotal="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mUsed="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mWarn=\'"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    .line 29
    const/16 v2, 0x27

    .line 31
    const-string v3, ", mYearlyPackageType=\'"

    .line 33
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 36
    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    .line 38
    const-string v3, ", mYearlyPackageSize="

    .line 40
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 43
    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", mYearlyPackageCreateTime="

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", mYearlyPackageExpireTime="

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", mItemInfoList="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v1, 0x7d

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    return-object v0
.end method
