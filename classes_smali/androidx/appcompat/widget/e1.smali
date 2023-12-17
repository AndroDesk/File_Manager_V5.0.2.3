.class public final Landroidx/appcompat/widget/e1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static k:Landroidx/appcompat/widget/e1;

.field public static l:Landroidx/appcompat/widget/e1;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/CharSequence;

.field public final c:I

.field public final d:Landroidx/appcompat/widget/d1;

.field public final e:Landroidx/appcompat/widget/d1;

.field public f:I

.field public g:I

.field public h:Landroidx/appcompat/widget/f1;

.field public i:Z

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/widget/d1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/d1;-><init>(Landroidx/appcompat/widget/e1;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/e1;->d:Landroidx/appcompat/widget/d1;

    new-instance v0, Landroidx/appcompat/widget/d1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/d1;-><init>(Landroidx/appcompat/widget/e1;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/e1;->e:Landroidx/appcompat/widget/d1;

    iput-object p1, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/appcompat/widget/e1;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    sget-object v0, Lm0/j0;->a:Ljava/lang/reflect/Method;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2c

    invoke-static {p2}, Lm0/j0$b;->a(Landroid/view/ViewConfiguration;)I

    move-result p2

    goto :goto_32

    :cond_2c
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    :goto_32
    iput p2, p0, Landroidx/appcompat/widget/e1;->c:I

    iput-boolean v1, p0, Landroidx/appcompat/widget/e1;->j:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static b(Landroidx/appcompat/widget/e1;)V
    .registers 4

    sget-object v0, Landroidx/appcompat/widget/e1;->k:Landroidx/appcompat/widget/e1;

    if-eqz v0, :cond_b

    iget-object v1, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    iget-object v0, v0, Landroidx/appcompat/widget/e1;->d:Landroidx/appcompat/widget/d1;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    sput-object p0, Landroidx/appcompat/widget/e1;->k:Landroidx/appcompat/widget/e1;

    if-eqz p0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/widget/e1;->d:Landroidx/appcompat/widget/d1;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    sget-object v0, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_3a

    sput-object v1, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    iget-object v0, p0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    if-eqz v0, :cond_33

    iget-object v2, v0, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-nez v2, :cond_1a

    goto :goto_29

    :cond_1a
    iget-object v2, v0, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v0, v0, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_29
    iput-object v1, p0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    iput-boolean v3, p0, Landroidx/appcompat/widget/e1;->j:Z

    iget-object v0, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_3a

    :cond_33
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    sget-object v0, Landroidx/appcompat/widget/e1;->k:Landroidx/appcompat/widget/e1;

    if-ne v0, p0, :cond_41

    invoke-static {v1}, Landroidx/appcompat/widget/e1;->b(Landroidx/appcompat/widget/e1;)V

    :cond_41
    iget-object v0, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/e1;->e:Landroidx/appcompat/widget/d1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Z)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/appcompat/widget/e1;->b(Landroidx/appcompat/widget/e1;)V

    sget-object v1, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroidx/appcompat/widget/e1;->a()V

    :cond_18
    sput-object v0, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    move/from16 v1, p1

    iput-boolean v1, v0, Landroidx/appcompat/widget/e1;->i:Z

    new-instance v1, Landroidx/appcompat/widget/f1;

    iget-object v2, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/f1;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    iget-object v2, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    iget v3, v0, Landroidx/appcompat/widget/e1;->f:I

    iget v4, v0, Landroidx/appcompat/widget/e1;->g:I

    iget-boolean v5, v0, Landroidx/appcompat/widget/e1;->i:Z

    iget-object v6, v0, Landroidx/appcompat/widget/e1;->b:Ljava/lang/CharSequence;

    iget-object v7, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_40

    const/4 v7, 0x1

    goto :goto_41

    :cond_40
    move v7, v9

    :goto_41
    const-string v10, "window"

    if-eqz v7, :cond_60

    iget-object v7, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_4f

    const/4 v7, 0x1

    goto :goto_50

    :cond_4f
    move v7, v9

    :goto_50
    if-nez v7, :cond_53

    goto :goto_60

    :cond_53
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iget-object v11, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    invoke-interface {v7, v11}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_60
    :goto_60
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Landroidx/appcompat/widget/f1;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v7, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lh/d;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v7, :cond_81

    goto :goto_86

    :cond_81
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    :goto_86
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    if-lt v11, v7, :cond_9c

    iget-object v7, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lh/d;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int v11, v4, v7

    sub-int/2addr v4, v7

    goto :goto_a1

    :cond_9c
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    move v4, v9

    :goto_a1
    const/16 v7, 0x31

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v7, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v5, :cond_b0

    sget v13, Lh/d;->tooltip_y_offset_touch:I

    goto :goto_b2

    :cond_b0
    sget v13, Lh/d;->tooltip_y_offset_non_touch:I

    :goto_b2
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    instance-of v15, v14, Landroid/view/WindowManager$LayoutParams;

    if-eqz v15, :cond_c9

    check-cast v14, Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v14, v12, :cond_c9

    goto :goto_e7

    :cond_c9
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    :goto_cd
    instance-of v15, v14, Landroid/content/ContextWrapper;

    if-eqz v15, :cond_e7

    instance-of v15, v14, Landroid/app/Activity;

    if-eqz v15, :cond_e0

    check-cast v14, Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    goto :goto_e7

    :cond_e0
    check-cast v14, Landroid/content/ContextWrapper;

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    goto :goto_cd

    :cond_e7
    :goto_e7
    if-nez v13, :cond_f2

    const-string v2, "TooltipPopup"

    const-string v3, "Cannot find app view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17e

    :cond_f2
    iget-object v14, v1, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v14, v1, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    if-gez v15, :cond_126

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-gez v14, :cond_126

    iget-object v14, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "status_bar_height"

    const-string v12, "dimen"

    const-string v8, "android"

    invoke-virtual {v14, v15, v12, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_118

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_119

    :cond_118
    move v8, v9

    :goto_119
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget-object v14, v1, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    iget v15, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v14, v9, v8, v15, v12}, Landroid/graphics/Rect;->set(IIII)V

    :cond_126
    iget-object v8, v1, Landroidx/appcompat/widget/f1;->g:[I

    invoke-virtual {v13, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v8, v1, Landroidx/appcompat/widget/f1;->f:[I

    invoke-virtual {v2, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, v1, Landroidx/appcompat/widget/f1;->f:[I

    aget v8, v2, v9

    iget-object v12, v1, Landroidx/appcompat/widget/f1;->g:[I

    aget v14, v12, v9

    sub-int/2addr v8, v14

    aput v8, v2, v9

    const/4 v14, 0x1

    aget v15, v2, v14

    aget v12, v12, v14

    sub-int/2addr v15, v12

    aput v15, v2, v14

    add-int/2addr v8, v3

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v8, v2

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v2, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v1, Landroidx/appcompat/widget/f1;->f:[I

    const/4 v8, 0x1

    aget v3, v3, v8

    add-int/2addr v4, v3

    sub-int/2addr v4, v7

    sub-int/2addr v4, v2

    add-int/2addr v3, v11

    add-int/2addr v3, v7

    if-eqz v5, :cond_170

    if-ltz v4, :cond_16d

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_17e

    :cond_16d
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_17e

    :cond_170
    add-int/2addr v2, v3

    iget-object v5, v1, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v2, v5, :cond_17c

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_17e

    :cond_17c
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_17e
    iget-object v2, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    iget-object v1, v1, Landroidx/appcompat/widget/f1;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v1, v0, Landroidx/appcompat/widget/e1;->i:Z

    if-eqz v1, :cond_199

    const-wide/16 v1, 0x9c4

    goto :goto_1b2

    :cond_199
    iget-object v1, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    invoke-static {v1}, Lm0/g0$d;->g(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1aa

    const-wide/16 v1, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    goto :goto_1b0

    :cond_1aa
    const-wide/16 v1, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    :goto_1b0
    int-to-long v3, v3

    sub-long/2addr v1, v3

    :goto_1b2
    iget-object v3, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    iget-object v4, v0, Landroidx/appcompat/widget/e1;->e:Landroidx/appcompat/widget/d1;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    iget-object v4, v0, Landroidx/appcompat/widget/e1;->e:Landroidx/appcompat/widget/d1;

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object p1, p0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroidx/appcompat/widget/e1;->i:Z

    if-eqz p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq p1, v1, :cond_38

    const/16 p2, 0xa

    if-eq p1, p2, :cond_32

    goto :goto_78

    :cond_32
    iput-boolean v2, p0, Landroidx/appcompat/widget/e1;->j:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/e1;->a()V

    goto :goto_78

    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_78

    iget-object p1, p0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    if-nez p1, :cond_78

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-boolean v1, p0, Landroidx/appcompat/widget/e1;->j:Z

    if-nez v1, :cond_6d

    iget v1, p0, Landroidx/appcompat/widget/e1;->f:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/e1;->c:I

    if-gt v1, v3, :cond_6d

    iget v1, p0, Landroidx/appcompat/widget/e1;->g:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/e1;->c:I

    if-le v1, v3, :cond_6b

    goto :goto_6d

    :cond_6b
    move v2, v0

    goto :goto_73

    :cond_6d
    :goto_6d
    iput p1, p0, Landroidx/appcompat/widget/e1;->f:I

    iput p2, p0, Landroidx/appcompat/widget/e1;->g:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/e1;->j:Z

    :goto_73
    if-eqz v2, :cond_78

    invoke-static {p0}, Landroidx/appcompat/widget/e1;->b(Landroidx/appcompat/widget/e1;)V

    :cond_78
    :goto_78
    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/e1;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/e1;->g:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e1;->c(Z)V

    return p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/e1;->a()V

    return-void
.end method
