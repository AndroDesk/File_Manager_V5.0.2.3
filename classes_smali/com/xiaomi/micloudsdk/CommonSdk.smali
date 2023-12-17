.class public Lcom/xiaomi/micloudsdk/CommonSdk;
.super Ljava/lang/Object;
.source "CommonSdk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiCloudMemberStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/sync/VipInfo;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getMiCloudMemberStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/sync/VipInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getMiCloudStatusInfo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getMiCloudStatusInfo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
