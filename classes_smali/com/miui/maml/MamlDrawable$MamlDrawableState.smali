.class public Lcom/miui/maml/MamlDrawable$MamlDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/MamlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MamlDrawableState"
.end annotation


# instance fields
.field public mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field public mStateBadgeLocation:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createDrawable()Lcom/miui/maml/MamlDrawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->createDrawable()Lcom/miui/maml/MamlDrawable;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    iget-object v2, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz v2, :cond_11

    .line 13
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v2

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move-object v2, v1

    .line 19
    :goto_12
    iget-object v3, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 21
    if-eqz v3, :cond_25

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 25
    iget-object v3, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 27
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 29
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 31
    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 33
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 35
    invoke-direct {v1, v4, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 38
    :cond_25
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/MamlDrawable;->setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 41
    return-object v0
.end method
