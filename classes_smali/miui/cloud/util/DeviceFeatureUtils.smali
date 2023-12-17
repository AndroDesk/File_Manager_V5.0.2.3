.class public Lmiui/cloud/util/DeviceFeatureUtils;
.super Ljava/lang/Object;
.source "DeviceFeatureUtils.java"


# static fields
.field public static final FEATURE_EXEMPT_MASTER_SYNC_AUTO:Ljava/lang/String; = "exempt_master_sync_auto"

.field public static final FEATURE_SUPPORT_FILE_CHANGE_CHECK:Ljava/lang/String; = "support_file_change_check"

.field public static final FEATURE_SUPPORT_GOOGLE_CSP_SYNC:Ljava/lang/String; = "support_google_csp_sync"

.field private static final TAG:Ljava/lang/String; = "DeviceFeatureUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDeviceFeaturesOrNull()[Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "failed to find features from miclousdk, "

    .line 3
    const-string v1, "DeviceFeatureUtils"

    .line 5
    :try_start_4
    const-string v2, "miui.cloud.DeviceFeature"

    .line 7
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v2

    .line 11
    const-string v3, "features"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, [Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_16} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_16} :catch_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_16} :catch_17

    .line 23
    return-object v2

    .line 24
    :catch_17
    move-exception v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_52

    .line 44
    :catch_2b
    move-exception v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_52

    .line 64
    :catch_3f
    move-exception v2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_52
    const/4 v0, 0x0

    .line 84
    return-object v0
.end method

.method public static hasDeviceFeature(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/util/DeviceFeatureUtils;->getAllDeviceFeaturesOrNull()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method
