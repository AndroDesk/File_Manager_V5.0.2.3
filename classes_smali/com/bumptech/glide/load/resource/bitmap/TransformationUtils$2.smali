.class Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;
.super Ljava/lang/Object;
.source "TransformationUtils.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$bottomLeft:F

.field public final synthetic val$bottomRight:F

.field public final synthetic val$topLeft:F

.field public final synthetic val$topRight:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$topLeft:F

    .line 3
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$topRight:F

    .line 5
    iput p3, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomRight:F

    .line 7
    iput p4, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomLeft:F

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public drawRoundedCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .registers 8

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6
    const/16 v1, 0x8

    .line 8
    new-array v1, v1, [F

    .line 10
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$topLeft:F

    .line 12
    const/4 v3, 0x0

    .line 13
    aput v2, v1, v3

    .line 15
    const/4 v3, 0x1

    .line 16
    aput v2, v1, v3

    .line 18
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$topRight:F

    .line 20
    const/4 v3, 0x2

    .line 21
    aput v2, v1, v3

    .line 23
    const/4 v3, 0x3

    .line 24
    aput v2, v1, v3

    .line 26
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomRight:F

    .line 28
    const/4 v3, 0x4

    .line 29
    aput v2, v1, v3

    .line 31
    const/4 v3, 0x5

    .line 32
    aput v2, v1, v3

    .line 34
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomLeft:F

    .line 36
    const/4 v3, 0x6

    .line 37
    aput v2, v1, v3

    .line 39
    const/4 v3, 0x7

    .line 40
    aput v2, v1, v3

    .line 42
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 44
    invoke-virtual {v0, p3, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 47
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 50
    return-void
.end method
