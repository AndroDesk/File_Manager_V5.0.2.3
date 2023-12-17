.class Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutChangeListener"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AlertController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    .line 13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 18
    return-void
.end method

.method private changeViewPadding(Landroid/view/View;II)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    return-void
.end method

.method private handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiuix/appcompat/app/AlertController;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    invoke-static {p3}, Lmiuix/appcompat/app/AlertController;->access$2700(Lmiuix/appcompat/app/AlertController;)I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 12
    sub-int/2addr v0, p2

    .line 13
    const/4 p2, 0x0

    .line 14
    if-lez v0, :cond_2f

    .line 16
    neg-int v0, v0

    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2b

    .line 25
    const/16 p2, 0x1e

    .line 27
    if-lt v1, p2, :cond_27

    .line 29
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 36
    move-result-object p1

    .line 37
    iget p2, p1, Landroid/graphics/Insets;->bottom:I

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 43
    move-result p2

    .line 44
    :cond_2b
    :goto_2b
    add-int/2addr p2, v0

    .line 45
    invoke-static {}, Lmiuix/appcompat/widget/DialogAnimHelper;->cancelAnimator()V

    .line 48
    :cond_2f
    invoke-static {p3, p2}, Lmiuix/appcompat/app/AlertController;->access$2100(Lmiuix/appcompat/app/AlertController;I)V

    .line 51
    return-void
.end method

.method private handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_35

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 14
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 16
    if-lez v2, :cond_2d

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 21
    move-result v0

    .line 22
    sub-int v0, p2, v0

    .line 24
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 26
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 28
    if-ne v2, p2, :cond_25

    .line 30
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    .line 37
    goto :goto_48

    .line 38
    :cond_25
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1, v1, v0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    .line 45
    goto :goto_48

    .line 46
    :cond_2d
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1, v1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    .line 53
    goto :goto_48

    .line 54
    :cond_35
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 61
    move-result p2

    .line 62
    if-gtz p2, :cond_45

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 67
    move-result p2

    .line 68
    if-lez p2, :cond_48

    .line 70
    :cond_45
    invoke-direct {p0, p1, v1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    .line 73
    :cond_48
    :goto_48
    return-void
.end method


# virtual methods
.method public hasNavigationBarHeightInMultiWindowMode()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/AlertController;

    .line 9
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lmiuix/appcompat/app/AlertController;

    .line 21
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 30
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 32
    const/4 v2, 0x1

    .line 33
    if-nez v1, :cond_4d

    .line 35
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lmiuix/appcompat/app/AlertController;

    .line 45
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    .line 48
    move-result-object v1

    .line 49
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 51
    if-ne v0, v1, :cond_4d

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 55
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 57
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lmiuix/appcompat/app/AlertController;

    .line 65
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    .line 68
    move-result-object v1

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static {v1, v3}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;Z)I

    .line 73
    move-result v1

    .line 74
    if-le v0, v1, :cond_4c

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v2, v3

    .line 78
    :cond_4d
    :goto_4d
    return v2
.end method

.method public isInMultiScreenTop()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/AlertController;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_3d

    .line 12
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 23
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 25
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 27
    if-nez v3, :cond_3d

    .line 29
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 31
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    .line 34
    move-result-object v3

    .line 35
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 37
    if-ne v2, v3, :cond_3d

    .line 39
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    .line 42
    move-result-object v0

    .line 43
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 45
    int-to-float v0, v0

    .line 46
    const/high16 v2, 0x3f400000  # 0.75f

    .line 48
    mul-float/2addr v0, v2

    .line 49
    float-to-int v0, v0

    .line 50
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 52
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 54
    if-ltz v3, :cond_3d

    .line 56
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 58
    if-gt v2, v0, :cond_3d

    .line 60
    const/4 v0, 0x1

    .line 61
    move v1, v0

    .line 62
    :cond_3d
    return v1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lmiuix/appcompat/app/AlertController;

    .line 9
    if-eqz p2, :cond_3b

    .line 11
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 16
    invoke-direct {p0, p2, p4}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V

    .line 19
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    const/16 p4, 0x1e

    .line 23
    if-ge p3, p4, :cond_3b

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 28
    move-result-object p3

    .line 29
    if-eqz p3, :cond_2a

    .line 31
    invoke-static {p2}, Lmiuix/appcompat/app/AlertController;->access$2600(Lmiuix/appcompat/app/AlertController;)Z

    .line 34
    move-result p3

    .line 35
    if-nez p3, :cond_3b

    .line 37
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    .line 39
    invoke-direct {p0, p1, p3, p2}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiuix/appcompat/app/AlertController;)V

    .line 42
    goto :goto_3b

    .line 43
    :cond_2a
    invoke-static {p2}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 50
    move-result p1

    .line 51
    const/4 p3, 0x0

    .line 52
    cmpg-float p1, p1, p3

    .line 54
    if-gez p1, :cond_3b

    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-static {p2, p1}, Lmiuix/appcompat/app/AlertController;->access$2100(Lmiuix/appcompat/app/AlertController;I)V

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method
