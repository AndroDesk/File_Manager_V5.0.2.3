.class public final Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final ARRAY_POOL_SIZE_BYTES:I = 0x400000

.field public static final BITMAP_POOL_TARGET_SCREENS:I

.field public static final LOW_MEMORY_MAX_SIZE_MULTIPLIER:F = 0.33f

.field public static final MAX_SIZE_MULTIPLIER:F = 0.4f

.field public static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2


# instance fields
.field public activityManager:Landroid/app/ActivityManager;

.field public arrayPoolSizeBytes:I

.field public bitmapPoolScreens:F

.field public final context:Landroid/content/Context;

.field public lowMemoryMaxSizeMultiplier:F

.field public maxSizeMultiplier:F

.field public memoryCacheScreens:F

.field public screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-ge v0, v1, :cond_8

    .line 7
    const/4 v0, 0x4

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    :goto_9
    sput v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->BITMAP_POOL_TARGET_SCREENS:I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x40000000  # 2.0f

    .line 6
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    .line 8
    sget v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->BITMAP_POOL_TARGET_SCREENS:I

    .line 10
    int-to-float v0, v0

    .line 11
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    .line 13
    const v0, 0x3ecccccd  # 0.4f

    .line 16
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    .line 18
    const v0, 0x3ea8f5c3  # 0.33f

    .line 21
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    .line 23
    const/high16 v0, 0x400000

    .line 25
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    .line 29
    const-string v0, "activity"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/ActivityManager;

    .line 37
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 39
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    .line 52
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    .line 54
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v0, 0x1a

    .line 58
    if-lt p1, v0, :cond_46

    .line 60
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_46

    .line 68
    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    .line 71
    :cond_46
    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    .registers 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 3
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)V

    .line 6
    return-object v0
.end method

.method public setActivityManager(Landroid/app/ActivityManager;)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 3
    return-object p0
.end method

.method public setArrayPoolSize(I)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    .line 3
    return-object p0
.end method

.method public setBitmapPoolScreens(F)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    const-string v1, "Bitmap pool screens must be greater than or equal to 0"

    .line 11
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 14
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    .line 16
    return-object p0
.end method

.method public setLowMemoryMaxSizeMultiplier(F)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_d

    .line 6
    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    cmpg-float v0, p1, v0

    .line 10
    if-gtz v0, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    const-string v1, "Low memory max size multiplier must be between 0 and 1"

    .line 17
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    .line 22
    return-object p0
.end method

.method public setMaxSizeMultiplier(F)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_d

    .line 6
    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    cmpg-float v0, p1, v0

    .line 10
    if-gtz v0, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    const-string v1, "Size multiplier must be between 0 and 1"

    .line 17
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    .line 22
    return-object p0
.end method

.method public setMemoryCacheScreens(F)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    const-string v1, "Memory cache screens must be greater than or equal to 0"

    .line 11
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 14
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    .line 16
    return-object p0
.end method

.method public setScreenDimensions(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    .line 3
    return-object p0
.end method
