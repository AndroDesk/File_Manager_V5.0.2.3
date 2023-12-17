.class final Lcom/google/android/material/transition/platform/TransitionUtils$2;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$endBounds:Landroid/graphics/RectF;

.field public final synthetic val$endFraction:F

.field public final synthetic val$fraction:F

.field public final synthetic val$startBounds:Landroid/graphics/RectF;

.field public final synthetic val$startFraction:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$startBounds:Landroid/graphics/RectF;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$endBounds:Landroid/graphics/RectF;

    .line 5
    iput p3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$startFraction:F

    .line 7
    iput p4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$endFraction:F

    .line 9
    iput p5, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$fraction:F

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$startBounds:Landroid/graphics/RectF;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$endBounds:Landroid/graphics/RectF;

    .line 9
    invoke-interface {p2, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 12
    move-result p2

    .line 13
    iget v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$startFraction:F

    .line 15
    iget v1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$endFraction:F

    .line 17
    iget v2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$fraction:F

    .line 19
    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    .line 22
    move-result p1

    .line 23
    new-instance p2, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 25
    invoke-direct {p2, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 28
    return-object p2
.end method
