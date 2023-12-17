.class public Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;
.super Ljava/lang/Object;
.source "MiCloudSDKDependencyUtil.java"


# static fields
.field public static final SDKEnvironment:I

.field private static final TAG:Ljava/lang/String; = "MiCloudSDKDependencyUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->getSDKEnvironment()I

    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "MiCloudSDK environment: "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "MiCloudSDKDependencyUtil"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSDKEnvironment()I
    .registers 2

    .line 1
    const-string v0, "com.xiaomi.micloudsdk.os.MiCloudSdkVersion"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    const-string v1, "version"

    .line 11
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getStaticFieldIntValue(Ljava/lang/Class;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    const-string v0, "miui.cloud.helper.BroadcastIntentHelper"

    .line 18
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    const/16 v0, 0x19

    .line 26
    return v0

    .line 27
    :cond_1a
    const-string v0, "com.xiaomi.micloudsdk.utils.MiCloudRuntimeConstants"

    .line 29
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_25

    .line 35
    const/16 v0, 0x12

    .line 37
    return v0

    .line 38
    :cond_25
    const/4 v0, -0x1

    .line 39
    return v0
.end method
