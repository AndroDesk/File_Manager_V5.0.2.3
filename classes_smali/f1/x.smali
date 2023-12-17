.class public final synthetic Lf1/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic a(Landroid/view/View;)F
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/view/WindowInsets;)Landroid/graphics/Insets;
    .registers 1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    const-string v0, "com.xiaomi.mirror.callprovider"

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/view/Display;)Landroid/view/DisplayCutout;
    .registers 1

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/view/View;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(FLandroid/view/View;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public static bridge synthetic i(ILandroid/view/View;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionVisibility(I)V

    return-void
.end method

.method public static bridge synthetic j(Landroid/app/Activity;Lmiuix/animation/ViewTarget$LifecycleCallbacks;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static bridge synthetic k(Landroid/os/Parcel;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public static bridge synthetic l(Landroid/view/View;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    return-void
.end method

.method public static bridge synthetic n(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/view/View;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic p(Landroid/view/View;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void
.end method

.method public static bridge synthetic q(Landroid/widget/FrameLayout;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->suppressLayout(Z)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/widget/ImageView;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/os/Parcel;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic t(Landroid/view/WindowInsets;)Landroid/graphics/Insets;
    .registers 1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Landroid/app/Activity;Lmiuix/animation/ViewTarget$LifecycleCallbacks;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/view/WindowInsets;)Landroid/graphics/Insets;
    .registers 1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method
