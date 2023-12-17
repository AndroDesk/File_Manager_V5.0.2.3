.class public Lmiuix/core/util/ResourcesUtils;
.super Ljava/lang/Object;
.source "ResourcesUtils.java"


# static fields
.field private static ASSET_MANAGER_ADD_ASSET_PATH:Ljava/lang/reflect/Method;

.field private static ASSET_MANAGER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/ResourcesUtils;->ASSET_MANAGER_ADD_ASSET_PATH:Ljava/lang/reflect/Method;

    const-class v0, Landroid/content/res/AssetManager;

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/ResourcesUtils;->ASSET_MANAGER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_21
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createResources(Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lmiuix/core/util/ResourcesUtils;->ASSET_MANAGER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_c} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_c} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_c} :catch_25

    :try_start_c
    array-length v3, p1

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_36

    aget-object v5, p1, v4

    sget-object v6, Lmiuix/core/util/ResourcesUtils;->ASSET_MANAGER_ADD_ASSET_PATH:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_1c} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1c} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1c} :catch_1f

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :catch_1f
    move-exception p1

    goto :goto_27

    :catch_21
    move-exception p1

    goto :goto_2d

    :catch_23
    move-exception p1

    goto :goto_33

    :catch_25
    move-exception p1

    move-object v1, v0

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    :catch_2b
    move-exception p1

    move-object v1, v0

    :goto_2d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    :catch_31
    move-exception p1

    move-object v1, v0

    :goto_33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_36
    :goto_36
    if-nez p0, :cond_3e

    new-instance p0, Landroid/content/res/Resources;

    invoke-direct {p0, v1, v0, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_4c

    :cond_3e
    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {p1, v1, v0, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object p0, p1

    :goto_4c
    return-object p0
.end method

.method public static varargs createResources([Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lmiuix/core/util/ResourcesUtils;->createResources(Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
