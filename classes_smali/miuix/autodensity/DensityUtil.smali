.class public Lmiuix/autodensity/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sResourcesImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Landroid/app/ResourcesManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2, v1}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/ResourcesManager;

    .line 14
    sput-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 16
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 22
    const-class v1, Landroid/app/ResourcesManager;

    .line 24
    const-string v2, "mResourceImpls"

    .line 26
    invoke-static {v1, v0, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/util/ArrayMap;

    .line 32
    sput-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 34
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 36
    sput-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_25

    .line 38
    :catch_25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    const/16 v1, 0x1f

    .line 42
    if-lt v0, v1, :cond_3b

    .line 44
    :try_start_2b
    const-class v0, Landroid/app/ResourcesManager;

    .line 46
    sget-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 48
    const-string v2, "mLock"

    .line 50
    invoke-static {v0, v1, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_37} :catch_38

    .line 56
    goto :goto_3b

    .line 57
    :catch_38
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    .line 60
    :cond_3b
    :goto_3b
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 62
    if-eqz v0, :cond_47

    .line 64
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 66
    if-eqz v0, :cond_47

    .line 68
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    .line 70
    if-nez v0, :cond_4e

    .line 72
    :cond_47
    const-string v0, "AutoDensity"

    .line 74
    const-string v1, "ResourcesManager reflection failed, this app do not have permission to disable AutoDensity for activity/application"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeDensity(Landroid/content/res/Resources;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_56

    .line 11
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 17
    iget v2, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 19
    if-eq v1, v2, :cond_56

    .line 21
    invoke-static {p0, v0}, Lmiuix/autodensity/DensityUtil;->tryToCreateAndSetResourcesImpl(Landroid/content/res/Resources;Lmiuix/view/DisplayConfig;)V

    .line 24
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    move-result-object p0

    .line 32
    iget v2, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 34
    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 36
    iput v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 38
    iget v2, v0, Lmiuix/view/DisplayConfig;->density:F

    .line 40
    iput v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 42
    iget v2, v0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 44
    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 46
    iget v2, v0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 48
    iput v2, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 50
    invoke-static {}, Lmiuix/autodensity/AutoDensityConfig;->shouldUpdateSystemResource()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3a

    .line 56
    invoke-static {v0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    .line 59
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v2, "after changeDensity "

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 87
    :cond_56
    return-void
.end method

.method private static findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Lmiuix/view/DisplayConfig;)Landroid/content/res/ResourcesImpl;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-class v1, Ljava/lang/String;

    .line 5
    const-string v2, "findOrCreateResourcesImplForKeyLocked failed "

    .line 7
    const-class v3, [Ljava/lang/String;

    .line 9
    :try_start_8
    new-instance v4, Landroid/content/res/Configuration;

    .line 11
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 14
    const-class v5, Landroid/content/res/ResourcesKey;

    .line 16
    const-string v6, "mOverrideConfiguration"

    .line 18
    invoke-static {v5, v0, v6}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/content/res/Configuration;

    .line 24
    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 27
    move-object/from16 v5, p1

    .line 29
    iget v5, v5, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 31
    iput v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 33
    const-class v5, Landroid/content/res/ResourcesKey;

    .line 35
    const-string v6, "mDisplayId"

    .line 37
    invoke-static {v5, v0, v6}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v5

    .line 47
    const-class v6, Landroid/content/res/ResourcesKey;

    .line 49
    const-string v7, "mLibDirs"

    .line 51
    invoke-static {v6, v0, v7}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, [Ljava/lang/String;

    .line 57
    const-class v7, Landroid/content/res/ResourcesKey;

    .line 59
    const-string v8, "mCompatInfo"

    .line 61
    invoke-static {v7, v0, v8}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .line 67
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    const/16 v9, 0x1e

    .line 71
    if-gt v8, v9, :cond_53

    .line 73
    const-class v9, Landroid/content/res/ResourcesKey;

    .line 75
    const-string v10, "mOverlayDirs"

    .line 77
    invoke-static {v9, v0, v10}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    move-result-object v9

    .line 81
    check-cast v9, [Ljava/lang/String;

    .line 83
    goto :goto_5d

    .line 84
    :cond_53
    const-class v9, Landroid/content/res/ResourcesKey;

    .line 86
    const-string v10, "mOverlayPaths"

    .line 88
    invoke-static {v9, v0, v10}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v9

    .line 92
    check-cast v9, [Ljava/lang/String;

    .line 94
    :goto_5d
    const/16 v10, 0x1d

    .line 96
    const/4 v11, 0x4

    .line 97
    const/4 v12, 0x3

    .line 98
    const/4 v13, 0x2

    .line 99
    const/4 v14, 0x7

    .line 100
    const/4 v15, 0x1

    .line 101
    const/16 v16, 0x0

    .line 103
    if-gt v8, v10, :cond_a3

    .line 105
    const-class v8, Landroid/content/res/ResourcesKey;

    .line 107
    new-array v10, v14, [Ljava/lang/Class;

    .line 109
    aput-object v1, v10, v16

    .line 111
    aput-object v3, v10, v15

    .line 113
    aput-object v3, v10, v13

    .line 115
    aput-object v3, v10, v12

    .line 117
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 119
    aput-object v1, v10, v11

    .line 121
    const-class v1, Landroid/content/res/Configuration;

    .line 123
    const/4 v3, 0x5

    .line 124
    aput-object v1, v10, v3

    .line 126
    const-class v1, Landroid/content/res/CompatibilityInfo;

    .line 128
    const/4 v3, 0x6

    .line 129
    aput-object v1, v10, v3

    .line 131
    new-array v1, v14, [Ljava/lang/Object;

    .line 133
    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 135
    aput-object v3, v1, v16

    .line 137
    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 139
    aput-object v0, v1, v15

    .line 141
    aput-object v9, v1, v13

    .line 143
    aput-object v6, v1, v12

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v0

    .line 149
    aput-object v0, v1, v11

    .line 151
    const/4 v0, 0x5

    .line 152
    aput-object v4, v1, v0

    .line 154
    const/4 v0, 0x6

    .line 155
    aput-object v7, v1, v0

    .line 157
    invoke-static {v8, v10, v1}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 163
    goto :goto_f3

    .line 164
    :cond_a3
    const-class v8, Landroid/content/res/ResourcesKey;

    .line 166
    const-string v10, "mLoaders"

    .line 168
    invoke-static {v8, v0, v10}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    move-result-object v8

    .line 172
    check-cast v8, [Landroid/content/res/loader/ResourcesLoader;

    .line 174
    const-class v10, Landroid/content/res/ResourcesKey;

    .line 176
    const/16 v11, 0x8

    .line 178
    new-array v14, v11, [Ljava/lang/Class;

    .line 180
    aput-object v1, v14, v16

    .line 182
    aput-object v3, v14, v15

    .line 184
    aput-object v3, v14, v13

    .line 186
    aput-object v3, v14, v12

    .line 188
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 190
    const/4 v3, 0x4

    .line 191
    aput-object v1, v14, v3

    .line 193
    const-class v1, Landroid/content/res/Configuration;

    .line 195
    const/4 v3, 0x5

    .line 196
    aput-object v1, v14, v3

    .line 198
    const-class v1, Landroid/content/res/CompatibilityInfo;

    .line 200
    const/4 v3, 0x6

    .line 201
    aput-object v1, v14, v3

    .line 203
    const-class v1, [Landroid/content/res/loader/ResourcesLoader;

    .line 205
    const/4 v3, 0x7

    .line 206
    aput-object v1, v14, v3

    .line 208
    new-array v1, v11, [Ljava/lang/Object;

    .line 210
    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 212
    aput-object v3, v1, v16

    .line 214
    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 216
    aput-object v0, v1, v15

    .line 218
    aput-object v9, v1, v13

    .line 220
    aput-object v6, v1, v12

    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    move-result-object v0

    .line 226
    const/4 v3, 0x4

    .line 227
    aput-object v0, v1, v3

    .line 229
    const/4 v0, 0x5

    .line 230
    aput-object v4, v1, v0

    .line 232
    const/4 v0, 0x6

    .line 233
    aput-object v7, v1, v0

    .line 235
    const/4 v0, 0x7

    .line 236
    aput-object v8, v1, v0

    .line 238
    invoke-static {v10, v14, v1}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 244
    :goto_f3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string v3, "newKey "

    .line 251
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 261
    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 264
    const-class v1, Landroid/app/ResourcesManager;

    .line 266
    sget-object v3, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 268
    const-string v4, "findOrCreateResourcesImplForKeyLocked"

    .line 270
    new-array v5, v15, [Ljava/lang/Class;

    .line 272
    const-class v6, Landroid/content/res/ResourcesKey;

    .line 274
    aput-object v6, v5, v16

    .line 276
    new-array v6, v15, [Ljava/lang/Object;

    .line 278
    aput-object v0, v6, v16

    .line 280
    invoke-static {v1, v3, v4, v5, v6}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Landroid/content/res/ResourcesImpl;
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11d} :catch_132
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_11d} :catch_11e

    .line 286
    return-object v0

    .line 287
    :catch_11e
    move-exception v0

    .line 288
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 306
    goto :goto_145

    .line 307
    :catch_132
    move-exception v0

    .line 308
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 326
    :goto_145
    const/4 v0, 0x0

    .line 327
    return-object v0
.end method

.method private static findResourcesKeyByResourcesImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 5

    .line 1
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    const/4 v2, 0x0

    .line 9
    if-ge v1, v0, :cond_28

    .line 11
    sget-object v3, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 19
    if-eqz v3, :cond_1a

    .line 21
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/content/res/ResourcesImpl;

    .line 27
    :cond_1a
    if-ne p0, v2, :cond_25

    .line 29
    sget-object p0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/content/res/ResourcesKey;

    .line 37
    return-object p0

    .line 38
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_7

    .line 41
    :cond_28
    return-object v2
.end method

.method public static getDefaultBitmapDensity()I
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "getDefaultDensity"

    .line 6
    const/4 v3, 0x0

    .line 7
    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 21
    return v0

    .line 22
    :catch_15
    move-exception v0

    .line 23
    const-string v1, "reflect exception: "

    .line 25
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 43
    const/4 v0, -0x1

    .line 44
    return v0
.end method

.method private static setDefaultBitmapDensity(I)V
    .registers 8

    .line 1
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "setDefaultDensity"

    .line 6
    const/4 v3, 0x1

    .line 7
    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    const/4 v6, 0x0

    .line 12
    aput-object v5, v4, v6

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v3, v6

    .line 22
    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v1, "setDefaultBitmapDensity "

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_42

    .line 46
    :catch_2d
    move-exception p0

    .line 47
    const-string v0, "reflect exception: "

    .line 49
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 67
    :goto_42
    return-void
.end method

.method public static setSystemResources(Lmiuix/view/DisplayConfig;)V
    .registers 5

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 19
    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 21
    iput v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 23
    iget v2, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 25
    iput v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 27
    iget v2, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 29
    iput v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    iget v2, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 33
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 35
    iget v2, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 37
    invoke-static {v2}, Lmiuix/autodensity/DensityUtil;->setDefaultBitmapDensity(I)V

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v3, "setSystemResources "

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, " "

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, " defaultBitmapDensity:"

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget p0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private static tryToCreateAndSetResourcesImpl(Landroid/content/res/Resources;Lmiuix/view/DisplayConfig;)V
    .registers 9

    .line 1
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 3
    if-eqz v0, :cond_79

    .line 5
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 7
    if-eqz v0, :cond_79

    .line 9
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_79

    .line 14
    :cond_d
    :try_start_d
    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_e} :catch_64

    .line 15
    :try_start_e
    const-class v1, Landroid/content/res/Resources;

    .line 17
    const-string v2, "mResourcesImpl"

    .line 19
    invoke-static {v1, p0, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/content/res/ResourcesImpl;

    .line 25
    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findResourcesKeyByResourcesImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v3, "oldKey "

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 49
    if-eqz v1, :cond_5f

    .line 51
    invoke-static {v1, p1}, Lmiuix/autodensity/DensityUtil;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Lmiuix/view/DisplayConfig;)Landroid/content/res/ResourcesImpl;

    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_5f

    .line 57
    const-class v1, Landroid/content/res/Resources;

    .line 59
    const-string v2, "setImpl"

    .line 61
    const/4 v3, 0x1

    .line 62
    new-array v4, v3, [Ljava/lang/Class;

    .line 64
    const-class v5, Landroid/content/res/ResourcesImpl;

    .line 66
    const/4 v6, 0x0

    .line 67
    aput-object v5, v4, v6

    .line 69
    new-array v3, v3, [Ljava/lang/Object;

    .line 71
    aput-object p1, v3, v6

    .line 73
    invoke-static {v1, p0, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v1, "set impl success "

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 96
    :cond_5f
    monitor-exit v0

    .line 97
    goto :goto_79

    .line 98
    :catchall_61
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_e .. :try_end_63} :catchall_61

    .line 100
    :try_start_63
    throw p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_64} :catch_64

    .line 101
    :catch_64
    move-exception p0

    .line 102
    const-string p1, "tryToCreateAndSetResourcesImpl failed "

    .line 104
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 122
    :cond_79
    :goto_79
    return-void
.end method

.method public static updateCustomDensity(Landroid/content/Context;)V
    .registers 2

    .line 1
    if-nez p0, :cond_a

    .line 3
    const-string p0, "AutoDensity"

    .line 5
    const-string v0, "context should not null"

    .line 7
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1b

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->changeDensity(Landroid/content/res/Resources;)V

    .line 28
    :cond_1b
    return-void
.end method
