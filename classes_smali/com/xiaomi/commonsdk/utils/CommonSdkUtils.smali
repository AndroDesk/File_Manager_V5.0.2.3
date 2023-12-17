.class public Lcom/xiaomi/commonsdk/utils/CommonSdkUtils;
.super Ljava/lang/Object;
.source "CommonSdkUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getUserAgent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
