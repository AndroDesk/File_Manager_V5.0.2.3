.class public Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
.super Ljava/lang/Object;
.source "MiCloudStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/sync/MiCloudStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInfo"
.end annotation


# instance fields
.field private mLocalizedName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mUsed:J

.field public final synthetic this$0:Lmiui/cloud/sync/MiCloudStatusInfo;


# direct methods
.method public constructor <init>(Lmiui/cloud/sync/MiCloudStatusInfo;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->this$0:Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    .line 10
    iput-wide p4, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    .line 12
    return-void
.end method


# virtual methods
.method public getLocalizedName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUsed()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "ItemInfo{mName="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mLocalizedName="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mUsed=\'"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    const/16 v1, 0x7d

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
