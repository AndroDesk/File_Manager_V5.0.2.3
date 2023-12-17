.class public Lcom/xiaomi/micloudsdk/utils/MiCloudSdkBuild;
.super Ljava/lang/Object;
.source "MiCloudSdkBuild.java"


# static fields
.field public static final CURRENT_VERSION:I

.field private static final TAG:Ljava/lang/String; = "MiCloudSdkBuild"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    .line 3
    if-ltz v0, :cond_1d

    .line 5
    sput v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSdkBuild;->CURRENT_VERSION:I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "MiCloudSdk version: "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "MiCloudSdkBuild"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 32
    const-string v1, "No MiCloudSDK runtime!"

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
