.class Lcom/google/android/material/card/MaterialCardViewHelper$1;
.super Landroid/graphics/drawable/InsetDrawable;
.source "MaterialCardViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/card/MaterialCardViewHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardViewHelper;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 13

    .line 1
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    move v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 12
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
