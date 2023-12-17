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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiui/cloud/sync/MiCloudStatusInfo;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->this$0:Lmiui/cloud/sync/MiCloudStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    iput-wide p4, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    return-void
.end method


# virtual methods
.method public getLocalizedName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()J
    .registers 3

    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ItemInfo{mName="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalizedName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUsed=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
