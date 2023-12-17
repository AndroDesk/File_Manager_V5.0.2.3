.class Lmiuix/transition/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeMiuiClipAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;FFIFZ)Landroid/app/ActivityOptions;
    .registers 7

    .line 1
    invoke-static/range {p0 .. p6}, Landroid/app/ActivityOptions;->makeMiuiClipAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;FFIFZ)Landroid/app/ActivityOptions;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static makeMiuiRoundAnimation(FFIF)Landroid/app/ActivityOptions;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeMiuiRoundAnimation(FFIF)Landroid/app/ActivityOptions;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static makeScaleUpAnimationFromRoundedView(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static/range {p0 .. p11}, Landroid/app/ActivityOptions;->makeScaleUpAnimationFromRoundedView(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static makeScaleUpDown(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;
    .registers 13

    .line 1
    invoke-static/range {p0 .. p12}, Landroid/app/ActivityOptions;->makeScaleUpDown(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
