.class public Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;
.super Landroid/app/SharedElementCallback;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;
    }
.end annotation


# static fields
.field private static capturedSharedElement:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entering:Z

.field private returnEndBounds:Landroid/graphics/Rect;

.field private shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

.field private sharedElementReenterTransitionEnabled:Z

.field private transparentWindowBackgroundEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    .line 12
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;

    .line 14
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 19
    return-void
.end method

.method public static synthetic access$000(Landroid/view/Window;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->removeWindowBackground(Landroid/view/Window;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroid/view/Window;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->restoreWindowBackground(Landroid/view/Window;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    .line 3
    return-object v0
.end method

.method public static synthetic access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    sput-object p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method private static removeWindowBackground(Landroid/view/Window;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    const/4 v2, 0x0

    .line 18
    const/16 v3, 0x1d

    .line 20
    const/4 v4, 0x0

    .line 21
    if-lt v1, v3, :cond_21

    .line 23
    invoke-static {v0}, Lf0/c;->a(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_6e

    .line 29
    invoke-static {v4, v0}, Lf0/a;->a(ILjava/lang/Object;)Landroid/graphics/ColorFilter;

    .line 32
    move-result-object v2

    .line 33
    goto :goto_6e

    .line 34
    :cond_21
    if-nez v0, :cond_24

    .line 36
    goto :goto_66

    .line 37
    :cond_24
    sget-object v1, Lf0/b;->a:[I

    .line 39
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 42
    move-result v0

    .line 43
    aget v0, v1, v0

    .line 45
    packed-switch v0, :pswitch_data_72

    .line 48
    goto :goto_66

    .line 49
    :pswitch_30  #0x12
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    .line 51
    goto :goto_67

    .line 52
    :pswitch_33  #0x11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 54
    goto :goto_67

    .line 55
    :pswitch_36  #0x10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    .line 57
    goto :goto_67

    .line 58
    :pswitch_39  #0xf
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    .line 60
    goto :goto_67

    .line 61
    :pswitch_3c  #0xe
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 63
    goto :goto_67

    .line 64
    :pswitch_3f  #0xd
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 66
    goto :goto_67

    .line 67
    :pswitch_42  #0xc
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    .line 69
    goto :goto_67

    .line 70
    :pswitch_45  #0xb
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 72
    goto :goto_67

    .line 73
    :pswitch_48  #0xa
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 75
    goto :goto_67

    .line 76
    :pswitch_4b  #0x9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 78
    goto :goto_67

    .line 79
    :pswitch_4e  #0x8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 81
    goto :goto_67

    .line 82
    :pswitch_51  #0x7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 84
    goto :goto_67

    .line 85
    :pswitch_54  #0x6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 87
    goto :goto_67

    .line 88
    :pswitch_57  #0x5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 90
    goto :goto_67

    .line 91
    :pswitch_5a  #0x4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 93
    goto :goto_67

    .line 94
    :pswitch_5d  #0x3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    .line 96
    goto :goto_67

    .line 97
    :pswitch_60  #0x2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 99
    goto :goto_67

    .line 100
    :pswitch_63  #0x1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 102
    goto :goto_67

    .line 103
    :goto_66
    move-object v0, v2

    .line 104
    :goto_67
    if-eqz v0, :cond_6e

    .line 106
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 108
    invoke-direct {v2, v4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    :cond_6e
    :goto_6e
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 114
    return-void

    .line 115
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_63  #00000001
        :pswitch_60  #00000002
        :pswitch_5d  #00000003
        :pswitch_5a  #00000004
        :pswitch_57  #00000005
        :pswitch_54  #00000006
        :pswitch_51  #00000007
        :pswitch_4e  #00000008
        :pswitch_4b  #00000009
        :pswitch_48  #0000000a
        :pswitch_45  #0000000b
        :pswitch_42  #0000000c
        :pswitch_3f  #0000000d
        :pswitch_3c  #0000000e
        :pswitch_39  #0000000f
        :pswitch_36  #00000010
        :pswitch_33  #00000011
        :pswitch_30  #00000012
    .end packed-switch
.end method

.method private static restoreWindowBackground(Landroid/view/Window;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 16
    return-void
.end method

.method private setUpEnterTransform(Landroid/view/Window;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 7
    if-eqz v1, :cond_21

    .line 9
    check-cast v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 11
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    .line 13
    if-nez v1, :cond_12

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSharedElementReenterTransition(Landroid/transition/Transition;)V

    .line 19
    :cond_12
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 21
    if-eqz v1, :cond_21

    .line 23
    invoke-static {p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V

    .line 26
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;

    .line 28
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 34
    :cond_21
    return-void
.end method

.method private setUpReturnTransform(Landroid/app/Activity;Landroid/view/Window;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 7
    if-eqz v1, :cond_25

    .line 9
    check-cast v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->setHoldAtEndEnabled(Z)V

    .line 15
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;

    .line 17
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/app/Activity;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 23
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 25
    if-eqz p1, :cond_25

    .line 27
    invoke-static {p2, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V

    .line 30
    new-instance p1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;

    .line 32
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V

    .line 35
    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 38
    :cond_25
    return-void
.end method

.method private static updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/transition/Transition;->getDuration()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setTransitionBackgroundFadeDuration(J)V

    .line 8
    return-void
.end method


# virtual methods
.method public getShapeProvider()Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 3
    return-object v0
.end method

.method public isSharedElementReenterTransitionEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    .line 3
    return v0
.end method

.method public isTransparentWindowBackgroundEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 3
    return v0
.end method

.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_23

    .line 7
    sget-object p2, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    .line 9
    if-eqz p2, :cond_23

    .line 11
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 13
    if-eqz v0, :cond_23

    .line 15
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/view/View;

    .line 21
    if-eqz p2, :cond_23

    .line 23
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 25
    invoke-interface {v0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;->provideShape(Landroid/view/View;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_23

    .line 31
    sget v0, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 36
    :cond_23
    return-object p1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_32

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_32

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/view/View;

    .line 24
    if-eqz p1, :cond_32

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_32

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 39
    move-result-object p2

    .line 40
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 42
    if-eqz v0, :cond_2f

    .line 44
    invoke-direct {p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpEnterTransform(Landroid/view/Window;)V

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpReturnTransform(Landroid/app/Activity;Landroid/view/Window;)V

    .line 51
    :cond_32
    :goto_32
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p1, :cond_21

    .line 8
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/view/View;

    .line 14
    sget v0, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    instance-of p1, p1, Landroid/view/View;

    .line 22
    if-eqz p1, :cond_21

    .line 24
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/View;

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 34
    :cond_21
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 36
    if-nez p1, :cond_37

    .line 38
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_37

    .line 44
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/view/View;

    .line 50
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getRelativeBoundsRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    .line 56
    :cond_37
    iput-boolean p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 58
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1c

    .line 8
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1c

    .line 14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/View;

    .line 20
    sget v1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 22
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p1, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    :cond_1c
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 31
    if-nez p1, :cond_56

    .line 33
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_56

    .line 39
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    .line 41
    if-eqz p1, :cond_56

    .line 43
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/view/View;

    .line 49
    iget-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 54
    move-result p2

    .line 55
    const/high16 p3, 0x40000000  # 2.0f

    .line 57
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    move-result p2

    .line 61
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 66
    move-result v0

    .line 67
    invoke-static {v0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    move-result p3

    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 74
    iget-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    .line 76
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 78
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 80
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 82
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 84
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/view/View;->layout(IIII)V

    .line 87
    :cond_56
    return-void
.end method

.method public setShapeProvider(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 3
    return-void
.end method

.method public setSharedElementReenterTransitionEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    .line 3
    return-void
.end method

.method public setTransparentWindowBackgroundEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 3
    return-void
.end method
