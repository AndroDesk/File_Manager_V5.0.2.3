.class Lcom/google/android/material/shape/MaterialShapeDrawable$2;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateStrokePath()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final synthetic val$strokeInsetLength:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    iput p2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->val$strokeInsetLength:F

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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
    goto :goto_d

    .line 6
    :cond_5
    new-instance v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    .line 8
    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->val$strokeInsetLength:F

    .line 10
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/shape/AdjustedCornerSize;-><init>(FLcom/google/android/material/shape/CornerSize;)V

    .line 13
    move-object p1, v0

    .line 14
    :goto_d
    return-object p1
.end method
