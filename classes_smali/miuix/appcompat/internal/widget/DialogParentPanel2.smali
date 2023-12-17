.class public Lmiuix/appcompat/internal/widget/DialogParentPanel2;
.super Landroid/widget/LinearLayout;
.source "DialogParentPanel2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;
    }
.end annotation


# instance fields
.field private final mClipPath:Landroid/graphics/Path;

.field private mDensityDpi:I

.field private final mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

.field private final mLayer:Landroid/graphics/RectF;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mLayer:Landroid/graphics/RectF;

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mClipPath:Landroid/graphics/Path;

    const/4 p3, 0x1

    .line 6
    invoke-direct {p0, p3}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setSmoothCornerEnable(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 8
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_bg_corner_radius:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setCornerRadius(F)V

    .line 9
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mDensityDpi:I

    .line 10
    new-instance p3, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-direct {p3, p1, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    return-void
.end method

.method private clipRoundRect(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mClipPath:Landroid/graphics/Path;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mClipPath:Landroid/graphics/Path;

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mLayer:Landroid/graphics/RectF;

    .line 10
    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mRadius:F

    .line 12
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 14
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mClipPath:Landroid/graphics/Path;

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 22
    return-void
.end method

.method private notifyConfigurationChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getScreenHeightDp()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 9
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->flushWindowSizeIfNeed(I)V

    .line 12
    return-void
.end method

.method private refresh()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method private setCornerRadius(F)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 4
    if-gez v1, :cond_6

    .line 6
    move p1, v0

    .line 7
    :cond_6
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mRadius:F

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->refresh()V

    .line 12
    return-void
.end method

.method private setSmoothCornerEnable(Z)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->clipRoundRect(Landroid/graphics/Canvas;)V

    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 6
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mDensityDpi:I

    .line 8
    if-eq p1, v0, :cond_18

    .line 10
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mDensityDpi:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p1

    .line 16
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_bg_corner_radius:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 21
    move-result p1

    .line 22
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setCornerRadius(F)V

    .line 25
    :cond_18
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    .line 28
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getWidthMeasureSpecForDialog(I)I

    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 12
    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getHeightMeasureSpecForDialog(I)I

    .line 15
    move-result p2

    .line 16
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 19
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    iget-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mLayer:Landroid/graphics/RectF;

    .line 6
    int-to-float p1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    return-void
.end method
