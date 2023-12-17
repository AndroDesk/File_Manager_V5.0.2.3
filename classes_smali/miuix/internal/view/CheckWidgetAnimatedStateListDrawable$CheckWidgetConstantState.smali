.class public Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "CheckWidgetAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckWidgetConstantState"
.end annotation


# instance fields
.field public backGroundColor:I

.field public backgroundDisableAlpha:I

.field public backgroundNormalAlpha:I

.field public blackColor:I

.field public grayColor:I

.field public mParent:Landroid/graphics/drawable/Drawable$ConstantState;

.field public strokeColor:I

.field public strokeDisableAlpha:I

.field public strokeNormalAlpha:I

.field public touchAnimEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public newAnimatedStateListDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    new-instance v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    .line 6
    return-object v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    invoke-virtual {p0, v1, v1, p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->newAnimatedStateListDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 4
    :cond_6
    invoke-virtual {p0, p1, v1, p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->newAnimatedStateListDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 5
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_6
    invoke-virtual {p0, p1, p2, p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->newAnimatedStateListDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
