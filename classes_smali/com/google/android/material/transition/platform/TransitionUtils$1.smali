.class final Lcom/google/android/material/transition/platform/TransitionUtils$1;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/TransitionUtils;->convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$bounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$bounds:Landroid/graphics/RectF;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_18

    .line 6
    :cond_5
    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    .line 8
    iget-object v1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$bounds:Landroid/graphics/RectF;

    .line 10
    invoke-interface {p1, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 13
    move-result p1

    .line 14
    iget-object v1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$bounds:Landroid/graphics/RectF;

    .line 16
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 19
    move-result v1

    .line 20
    div-float/2addr p1, v1

    .line 21
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    .line 24
    move-object p1, v0

    .line 25
    :goto_18
    return-object p1
.end method
