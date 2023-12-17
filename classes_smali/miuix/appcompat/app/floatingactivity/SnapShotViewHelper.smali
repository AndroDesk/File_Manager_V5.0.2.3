.class public Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;
.super Ljava/lang/Object;
.source "SnapShotViewHelper.java"


# static fields
.field private static mRadius:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRadius(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget v0, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->mRadius:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_14

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p0

    .line 12
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_radius:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result p0

    .line 18
    int-to-float p0, p0

    .line 19
    sput p0, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->mRadius:F

    .line 21
    :cond_14
    return-void
.end method

.method private static checkViewParamsAvailable(Landroid/view/View;)Z
    .registers 1

    .line 1
    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_a

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    :goto_b
    return p0
.end method

.method public static generateSnapShotView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_4
    new-instance v0, Lmiuix/internal/widget/RoundFrameLayout;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->layout(IIII)V

    .line 6
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 8
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static generateSnapShotView(Landroid/content/Context;Lmiuix/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->getSnapShot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->generateSnapShotView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static generateSnapShotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/view/View;
    .registers 3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->generateSnapShotView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getSnapShot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->checkViewParamsAvailable(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->checkRadius(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1d

    .line 29
    return-object v1

    .line 30
    :cond_1d
    sget v1, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->mRadius:F

    .line 32
    invoke-static {v0, v1}, Lmiuix/graphics/BitmapFactory;->getRoundBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 43
    return-object v0
.end method
