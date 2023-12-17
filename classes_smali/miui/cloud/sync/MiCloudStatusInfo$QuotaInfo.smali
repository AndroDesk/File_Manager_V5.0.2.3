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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiui/cloud/sync/MiCloudStatusInfo;JJLjava/lang/String;Ljava/lang/String;JJJ)V
    .registers 14

    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->this$0:Lmiui/cloud/sync/MiCloudStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    iput-wide p4, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    iput-object p6, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    iput-object p7, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    iput-wide p8, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    iput-wide p10, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    iput-wide p12, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)V
    .registers 3

    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotal()J
    .registers 3

    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    return-wide v0
.end method

.method public getUsed()J
    .registers 3

    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    return-wide v0
.end method

.method public getWarn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    return-object v0
.end method

.method public getYearlyPackageCreateTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    return-wide v0
.end method

.method public getYearlyPackageExpireTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    return-wide v0
.end method

.method public getYearlyPackageSize()J
    .registers 3

    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    return-wide v0
.end method

.method public getYearlyPackageType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    return-object v0
.end method

.method public isSpaceFull()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isSpaceLowPercent()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "low_percent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "QuotaInfo{mTotal="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mWarn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mYearlyPackageType=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    const-string v3, ", mYearlyPackageSize="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mYearlyPackageCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mYearlyPackageExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mItemInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
