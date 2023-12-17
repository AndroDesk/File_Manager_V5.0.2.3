.class public Lmiuix/appcompat/internal/view/OutDropShadowView;
.super Landroid/view/View;
.source "OutDropShadowView.java"


# instance fields
.field private mClipOutPath:Landroid/graphics/Path;

.field private mDensityDpi:F

.field private mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

.field private mHostViewRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 11
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 12
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 15
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 16
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->init()V

    return-void
.end method

.method private init()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 15
    int-to-float v0, v0

    .line 16
    iput v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDensityDpi:F

    .line 18
    new-instance v0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;

    .line 20
    const/high16 v1, 0x42480000  # 50.0f

    .line 22
    invoke-direct {v0, v1}, Lmiuix/graphics/shadow/DropShadowConfig$Builder;-><init>(F)V

    .line 25
    const/4 v1, 0x6

    .line 26
    invoke-virtual {v0, v1}, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->setOffsetYDp(I)Lmiuix/graphics/shadow/DropShadowConfig$Builder;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->create()Lmiuix/graphics/shadow/DropShadowConfig;

    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v3

    .line 44
    sget v4, Lmiuix/appcompat/R$attr;->isLightTheme:I

    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-static {v3, v4, v5}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 50
    move-result v3

    .line 51
    invoke-direct {v1, v2, v0, v3}, Lmiuix/graphics/shadow/DropShadowLayerHelper;-><init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V

    .line 54
    iput-object v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v1, v3, v3, v0, v2}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowRect(IIII)V

    .line 68
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    const/4 v0, 0x4

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 6
    if-eqz v0, :cond_1a

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 v1, 0x1a

    .line 12
    if-lt v0, v1, :cond_12

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 16
    invoke-static {p1, v0}, Lm0/h0;->b(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 21
    iget v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 23
    int-to-float v1, v1

    .line 24
    invoke-virtual {v0, p1, v1}, Lmiuix/graphics/shadow/DropShadowHelper;->drawShadow(Landroid/graphics/Canvas;F)V

    .line 27
    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 33
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lmiuix/graphics/shadow/DropShadowHelper;->enableViewShadow(Landroid/view/View;ZI)V

    .line 11
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDensityDpi:F

    .line 6
    cmpl-float v0, v0, v1

    .line 8
    if-eqz v0, :cond_1b

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 12
    if-eqz v0, :cond_1b

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    sget v2, Lmiuix/appcompat/R$attr;->isLightTheme:I

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {v1, v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, p1, v1}, Lmiuix/graphics/shadow/DropShadowHelper;->onConfigChanged(Landroid/content/res/Configuration;Z)V

    .line 28
    :cond_1b
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 6
    if-eqz p1, :cond_20

    .line 8
    invoke-virtual {p1, p2, p3, p4, p5}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowRect(IIII)V

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 18
    iget-object p2, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 20
    invoke-virtual {p2}, Lmiuix/graphics/shadow/DropShadowHelper;->getShadowRect()Landroid/graphics/RectF;

    .line 23
    move-result-object p2

    .line 24
    iget p3, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 26
    int-to-float p4, p3

    .line 27
    int-to-float p3, p3

    .line 28
    sget-object p5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 30
    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 33
    :cond_20
    return-void
.end method

.method public onWillRemoved()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Lmiuix/graphics/shadow/DropShadowHelper;->enableViewShadow(Landroid/view/View;ZI)V

    .line 8
    return-void
.end method

.method public setShadowHostViewRadius(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowHelper;

    .line 12
    invoke-virtual {v0}, Lmiuix/graphics/shadow/DropShadowHelper;->getShadowRect()Landroid/graphics/RectF;

    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 18
    int-to-float v2, v1

    .line 19
    int-to-float v1, v1

    .line 20
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 22
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 25
    return-void
.end method
