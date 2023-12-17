.class public Lmiui/cloud/util/AnonymousDeviceIdUtil;
.super Ljava/lang/Object;
.source "AnonymousDeviceIdUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnonymousDeviceIdUtil"

.field private static sGetAAID:Ljava/lang/reflect/Method;

.field private static sGetOAID:Ljava/lang/reflect/Method;

.field private static sGetUDID:Ljava/lang/reflect/Method;

.field private static sGetVAID:Ljava/lang/reflect/Method;

.field private static sIdProivderImpl:Ljava/lang/Object;

.field private static sOAIDDeviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const-string v0, "provider not avaliable"

    const-string v1, "AnonymousDeviceIdUtil"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "cmi"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "umi"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "lmi"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "picasso"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "phoenix"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "phoenixin"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "vangogh"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "monet"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "toco"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "merlin"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "curtana"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "durandal"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "excalibur"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "joyeuse"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "gram"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_72
    const-string v2, "com.android.id.impl.IdProviderImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_72 .. :try_end_7e} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_72 .. :try_end_7e} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_72 .. :try_end_7e} :catch_d5

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_80
    const-string v5, "getUDID"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetUDID:Ljava/lang/reflect/Method;
    :try_end_8e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_80 .. :try_end_8e} :catch_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_80 .. :try_end_8e} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_80 .. :try_end_8e} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_80 .. :try_end_8e} :catch_d5

    goto :goto_95

    :catch_8f
    move-exception v5

    :try_start_90
    const-string v6, "getUDID not avaliable"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catch Ljava/lang/ClassNotFoundException; {:try_start_90 .. :try_end_95} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_90 .. :try_end_95} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_90 .. :try_end_95} :catch_d5

    :goto_95
    :try_start_95
    const-string v5, "getOAID"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetOAID:Ljava/lang/reflect/Method;
    :try_end_a3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_95 .. :try_end_a3} :catch_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_95 .. :try_end_a3} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_95 .. :try_end_a3} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_95 .. :try_end_a3} :catch_d5

    goto :goto_aa

    :catch_a4
    move-exception v5

    :try_start_a5
    const-string v6, "getOAID not avaliable"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a5 .. :try_end_aa} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_a5 .. :try_end_aa} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_a5 .. :try_end_aa} :catch_d5

    :goto_aa
    :try_start_aa
    const-string v5, "getVAID"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetVAID:Ljava/lang/reflect/Method;
    :try_end_b8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_aa .. :try_end_b8} :catch_b9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_aa .. :try_end_b8} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_aa .. :try_end_b8} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_aa .. :try_end_b8} :catch_d5

    goto :goto_bf

    :catch_b9
    move-exception v5

    :try_start_ba
    const-string v6, "getVAID not avaliable"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ba .. :try_end_bf} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_ba .. :try_end_bf} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_ba .. :try_end_bf} :catch_d5

    :goto_bf
    :try_start_bf
    const-string v5, "getAAID"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetAAID:Ljava/lang/reflect/Method;
    :try_end_cd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_bf .. :try_end_cd} :catch_ce
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bf .. :try_end_cd} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_bf .. :try_end_cd} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_bf .. :try_end_cd} :catch_d5

    goto :goto_e3

    :catch_ce
    move-exception v2

    :try_start_cf
    const-string v3, "getAAID not avaliable"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_cf .. :try_end_d4} :catch_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_cf .. :try_end_d4} :catch_da
    .catch Ljava/lang/InstantiationException; {:try_start_cf .. :try_end_d4} :catch_d5

    goto :goto_e3

    :catch_d5
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e3

    :catch_da
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e3

    :catch_df
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e3
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetAAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "AnonymousDeviceIdUtil"

    const-string v1, "android id"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 7

    const-string v0, "exception invoking "

    const-string v1, "AnonymousDeviceIdUtil"

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;

    if-eqz v2, :cond_3e

    if-eqz p1, :cond_3e

    const/4 v3, 0x1

    :try_start_b
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_16} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    :catch_2b
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetOAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetUDID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetVAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnforced(Landroid/content/Context;)Z
    .registers 5

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const-string v1, "AnonymousDeviceIdUtil"

    const/16 v2, 0x1d

    if-ge p0, v2, :cond_f

    const-string p0, "later than Q, not enforced"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    const-string v2, "ro.miui.restrict_imei"

    invoke-static {v2}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    const-string p0, "enforced"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_24
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_32

    const/16 v2, 0x1e

    if-lt p0, v2, :cond_32

    const-string p0, "new pad, enforced"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_32
    const/16 v2, 0x1f

    if-lt p0, v2, :cond_3c

    const-string p0, "greater than S, enforced"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3c
    const-string p0, "not enforced"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .registers 1

    sget-object p0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static useOAID()Z
    .registers 2

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
