.class public Lcom/miui/maml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# static fields
.field public static final INVALID_INDEX:I = -0x1

.field private static final LAYER_NUM:I = 0x5

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/util/ConfigFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

.field private static mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    .line 10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    .line 17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 20
    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    .line 22
    new-instance v0, Lcom/miui/maml/util/AppIconsHelper$1;

    .line 24
    invoke-direct {v0}, Lcom/miui/maml/util/AppIconsHelper$1;-><init>()V

    .line 27
    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Configuration_getThemeChanged(Landroid/content/res/Configuration;)I

    .line 12
    move-result p0

    .line 13
    sget v0, Lcom/miui/maml/util/AppIconsHelper;->mThemeChanged:I

    .line 15
    if-le p0, v0, :cond_15

    .line 17
    invoke-static {}, Lcom/miui/maml/util/AppIconsHelper;->clearCache()V

    .line 20
    sput p0, Lcom/miui/maml/util/AppIconsHelper;->mThemeChanged:I

    .line 22
    :cond_15
    return-void
.end method

.method public static cleanUp()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/miui/maml/RenderThread;->globalThreadStop()V

    .line 4
    return-void
.end method

.method public static clearCache()V
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/util/RendererCoreCache;->clear()V

    .line 8
    :cond_7
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 15
    :cond_e
    return-void
.end method

.method private static createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/maml/ResourceManager;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_13

    .line 14
    :cond_d
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/miui/maml/ResourceManager;

    .line 20
    :goto_13
    if-nez v0, :cond_2e

    .line 22
    new-instance v0, Lcom/miui/maml/LifecycleResourceManager;

    .line 24
    new-instance v2, Lcom/miui/maml/util/FancyIconResourceLoader;

    .line 26
    invoke-direct {v2, p1}, Lcom/miui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    .line 29
    const-wide/32 v3, 0x36ee80

    .line 32
    const-wide/32 v5, 0x57e40

    .line 35
    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/LifecycleResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;JJ)V

    .line 39
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2e
    return-object v0
.end method

.method private static createSubAnimatingDrawable(Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;
    .registers 18

    .line 1
    move-object v0, p1

    .line 2
    move/from16 v6, p6

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-static {p1, v6}, Lcom/miui/maml/util/AppIconsHelper;->getUseQuietWhenAnimFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z

    .line 10
    move-result v1

    .line 11
    invoke-static {p1, v6}, Lcom/miui/maml/util/AppIconsHelper;->getUseFancyWhenStaticFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z

    .line 14
    move-result v2

    .line 15
    move v8, v1

    .line 16
    move v9, v2

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    move v8, v1

    .line 19
    move v9, v8

    .line 20
    :goto_13
    invoke-static {p2, p3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->hashCode()I

    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    .line 40
    const-string v3, "/quiet/"

    .line 42
    move-object v4, p4

    .line 43
    invoke-static {p4, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v3, v1}, Lcom/miui/maml/util/AppIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_56

    .line 53
    if-eqz v0, :cond_48

    .line 55
    new-instance v10, Lcom/miui/maml/AnimatingDrawable;

    .line 57
    invoke-static {p1, v6}, Lcom/miui/maml/util/AppIconsHelper;->getLayerAnimIndex(Lcom/miui/maml/util/ConfigFile;I)I

    .line 60
    move-result v7

    .line 61
    move-object v0, v10

    .line 62
    move-object v1, p0

    .line 63
    move-object v2, p2

    .line 64
    move-object v3, p3

    .line 65
    move-object/from16 v5, p5

    .line 67
    move/from16 v6, p6

    .line 69
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    .line 72
    return-object v10

    .line 73
    :cond_48
    new-instance v7, Lcom/miui/maml/AnimatingDrawable;

    .line 75
    move-object v0, v7

    .line 76
    move-object v1, p0

    .line 77
    move-object v2, p2

    .line 78
    move-object v3, p3

    .line 79
    move-object/from16 v5, p5

    .line 81
    move/from16 v6, p6

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;I)V

    .line 86
    return-object v7

    .line 87
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v1, "fail to get rm, can\'t create subAD! package="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-object v1, p2

    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    const-string v1, "MAML AppIconsHelper"

    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 111
    return-object v0
.end method

.method private static getAdaptiveDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 21

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1d

    .line 6
    if-ge v0, v2, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-static/range {p2 .. p3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->hashCode()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getMamlAdaptiveIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_b3

    .line 30
    sget-object v3, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 38
    if-nez v3, :cond_29

    .line 40
    move-object v3, v1

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/miui/maml/util/ConfigFile;

    .line 48
    :goto_2f
    if-nez v3, :cond_59

    .line 50
    new-instance v3, Lcom/miui/maml/util/ConfigFile;

    .line 52
    invoke-direct {v3}, Lcom/miui/maml/util/ConfigFile;-><init>()V

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v5, "config.xml"

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Lcom/miui/maml/util/ConfigFile;->loadByIconStream(Ljava/lang/String;)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_58

    .line 78
    sget-object v4, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    .line 80
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 82
    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    move-object v3, v1

    .line 90
    :cond_59
    :goto_59
    sget-object v4, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;

    .line 92
    const-string v5, "quiet/"

    .line 94
    invoke-static {v2, v5}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v5

    .line 98
    invoke-static {v4, v5, v0}, Lcom/miui/maml/util/AppIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_b3

    .line 104
    const/4 v11, 0x0

    .line 105
    invoke-static {v2, v11}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 109
    const/4 v10, 0x0

    .line 110
    move-object v4, p0

    .line 111
    move-object v5, v3

    .line 112
    move-object/from16 v6, p2

    .line 114
    move-object/from16 v7, p3

    .line 116
    move-object/from16 v9, p6

    .line 118
    invoke-static/range {v4 .. v10}, Lcom/miui/maml/util/AppIconsHelper;->createSubAnimatingDrawable(Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;

    .line 121
    move-result-object v12

    .line 122
    if-nez v12, :cond_7c

    .line 124
    return-object v1

    .line 125
    :cond_7c
    new-instance v1, Ljava/util/ArrayList;

    .line 127
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const/4 v4, 0x1

    .line 131
    move v13, v4

    .line 132
    :goto_83
    const/4 v4, 0x5

    .line 133
    if-ge v13, v4, :cond_9f

    .line 135
    invoke-static {v2, v13}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    move-result-object v8

    .line 139
    move-object v4, p0

    .line 140
    move-object v5, v3

    .line 141
    move-object/from16 v6, p2

    .line 143
    move-object/from16 v7, p3

    .line 145
    move-object/from16 v9, p6

    .line 147
    move v10, v13

    .line 148
    invoke-static/range {v4 .. v10}, Lcom/miui/maml/util/AppIconsHelper;->createSubAnimatingDrawable(Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;

    .line 151
    move-result-object v4

    .line 152
    if-eqz v4, :cond_9f

    .line 154
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v13, v13, 0x1

    .line 159
    goto :goto_83

    .line 160
    :cond_9f
    new-instance v2, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    .line 162
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 164
    new-array v4, v11, [Landroid/graphics/drawable/Drawable;

    .line 166
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    move-result-object v1

    .line 170
    check-cast v1, [Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 175
    move-object v1, p0

    .line 176
    invoke-direct {v2, v12, v3, p0, v0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 179
    return-object v2

    .line 180
    :cond_b3
    return-object v1
.end method

.method public static getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 18

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/ComponentName;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_11

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    :try_start_8
    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 16
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_13

    .line 17
    goto :goto_14

    .line 18
    :catch_11
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    :catch_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    move-object v3, v0

    .line 22
    const/4 v9, 0x1

    .line 23
    move-object v2, p0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    move-wide v6, p3

    .line 27
    move-object/from16 v8, p5

    .line 29
    move/from16 v10, p6

    .line 31
    invoke-static/range {v2 .. v10}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;ZI)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .registers 12

    .line 5
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 13

    .line 6
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_f

    instance-of v0, p1, Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    .line 8
    :cond_f
    :goto_f
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_11
    move-object v3, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move-object v6, p5

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1d

    return-object p0

    .line 10
    :cond_1d
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .registers 14

    .line 15
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 16

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 16
    invoke-static/range {v0 .. v8}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;ZI)Landroid/graphics/drawable/Drawable;
    .registers 18

    move-wide v4, p4

    move/from16 v0, p8

    .line 17
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->isModIconEnabledForPackageName(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_b

    return-object v8

    .line 18
    :cond_b
    sget-object v1, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    if-nez v1, :cond_1f

    .line 19
    new-instance v1, Lcom/miui/maml/util/RendererCoreCache;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/miui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    .line 20
    :cond_1f
    :try_start_1f
    invoke-static {p0}, Lcom/miui/maml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getIdentifier(Landroid/os/UserHandle;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p7, :cond_41

    .line 22
    invoke-static/range {p0 .. p6}, Lcom/miui/maml/util/AppIconsHelper;->getAdaptiveDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_42

    :cond_41
    move-object v1, v8

    :goto_42
    if-nez v1, :cond_106

    if-eqz p7, :cond_9c

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9c

    .line 23
    invoke-static {p1, p2, p3}, Lmiui/content/res/IconCustomizer;->getMamlAdaptiveIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_106

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/fancy/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    invoke-virtual {v0, v2, p4, p5}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v0

    if-nez v0, :cond_8a

    .line 27
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    new-instance v6, Lcom/miui/maml/util/FancyIconResourceLoader;

    invoke-direct {v6, v1}, Lcom/miui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/miui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v1, v0

    move-object v3, p0

    move-wide v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v0

    :cond_8a
    if-eqz v0, :cond_99

    .line 28
    iget-object v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-eqz v1, :cond_99

    new-instance v1, Lcom/miui/maml/FancyDrawable;

    iget-object v0, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    invoke-direct {v1, v0}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    goto/16 :goto_106

    :cond_99
    move-object v1, v8

    goto/16 :goto_106

    .line 29
    :cond_9c
    invoke-static {p1, p2, p3}, Lmiui/content/res/IconCustomizer;->getAnimatingIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c9

    if-nez p7, :cond_c9

    .line 30
    sget-object v3, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "quiet/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/miui/maml/util/AppIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    move-result-object v0

    if-eqz v0, :cond_106

    .line 31
    new-instance v1, Lcom/miui/maml/AnimatingDrawable;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V

    goto :goto_106

    .line 32
    :cond_c9
    sget-object v1, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    invoke-virtual {v1, v2, p4, p5}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v1

    if-nez v1, :cond_f8

    if-eqz v0, :cond_e5

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fancy/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e9

    .line 34
    :cond_e5
    invoke-static {p1, p2, p3}, Lmiui/content/res/IconCustomizer;->getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_e9
    sget-object v1, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    new-instance v6, Lcom/miui/maml/util/FancyIconResourceLoader;

    invoke-direct {v6, v0}, Lcom/miui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/miui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v3, p0

    move-wide v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v1

    :cond_f8
    if-eqz v1, :cond_99

    .line 36
    iget-object v0, v1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-eqz v0, :cond_99

    new-instance v0, Lcom/miui/maml/FancyDrawable;

    iget-object v1, v1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    invoke-direct {v0, v1}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    move-object v1, v0

    :cond_106
    :goto_106
    if-eqz v1, :cond_10d

    move-object v0, p0

    move-object v2, p6

    .line 37
    invoke-static {p0, v1, p6}, Lcom/miui/maml/util/PortableUtils;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_10d} :catch_10e

    :cond_10d
    return-object v1

    :catch_10e
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAML AppIconsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 2
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3
    :goto_7
    invoke-static {p0, v0, p2, p3, p4}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .registers 12

    .line 11
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 14

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 v0, 0x0

    :goto_10
    move-object v2, v0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getLayerAnimIndex(Lcom/miui/maml/util/ConfigFile;I)I
    .registers 4

    .line 1
    if-eqz p0, :cond_1c

    .line 3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v1, "layer"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 28
    return p0

    .line 29
    :catch_1c
    :cond_1c
    const/4 p0, -0x1

    .line 30
    return p0
.end method

.method private static getUseFancyWhenStaticFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z
    .registers 5

    .line 1
    if-eqz p0, :cond_3a

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v1, "use_fancy_when_static_layer"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "true"

    .line 26
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_39

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v2, "layer_only_fancy"

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_39
    return v0

    .line 59
    :cond_3a
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method private static getUseQuietWhenAnimFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z
    .registers 5

    .line 1
    if-eqz p0, :cond_3a

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v1, "use_quiet_when_anim_layer"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "true"

    .line 26
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_39

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v2, "layer_only_quiet"

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_39
    return v0

    .line 59
    :cond_3a
    const/4 p0, 0x0

    .line 60
    return p0
.end method
