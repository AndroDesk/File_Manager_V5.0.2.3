.class public Lmiui/cloud/util/DeviceFeatureUtils;
.super Ljava/lang/Object;
.source "DeviceFeatureUtils.java"


# static fields
.field public static final FEATURE_EXEMPT_MASTER_SYNC_AUTO:Ljava/lang/String; = "exempt_master_sync_auto"

.field public static final FEATURE_SUPPORT_FILE_CHANGE_CHECK:Ljava/lang/String; = "support_file_change_check"

.field public static final FEATURE_SUPPORT_GOOGLE_CSP_SYNC:Ljava/lang/String; = "support_google_csp_sync"

.field private static final TAG:Ljava/lang/String; = "DeviceFeatureUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDeviceFeaturesOrNull()[Ljava/lang/String;
    .registers 4

    const-string v0, "failed to find features from miclousdk, "

    const-string v1, "DeviceFeatureUtils"

    :try_start_4
    const-string v2, "miui.cloud.DeviceFeature"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "features"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_16} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_16} :catch_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_16} :catch_17

    return-object v2

    :catch_17
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :catch_2b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :catch_3f
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasDeviceFeature(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lmiui/cloud/util/DeviceFeatureUtils;->getAllDeviceFeaturesOrNull()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
