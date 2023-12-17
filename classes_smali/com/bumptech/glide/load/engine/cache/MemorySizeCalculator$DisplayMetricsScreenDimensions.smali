.class final Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayMetricsScreenDimensions"
.end annotation


# instance fields
.field private final displayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 6
    return-void
.end method


# virtual methods
.method public getHeightPixels()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5
    return v0
.end method

.method public getWidthPixels()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5
    return v0
.end method
