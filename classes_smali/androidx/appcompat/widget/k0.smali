.class public Landroidx/appcompat/widget/k0;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/view/menu/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/k0$a;,
        Landroidx/appcompat/widget/k0$b;,
        Landroidx/appcompat/widget/k0$e;,
        Landroidx/appcompat/widget/k0$f;,
        Landroidx/appcompat/widget/k0$g;,
        Landroidx/appcompat/widget/k0$c;,
        Landroidx/appcompat/widget/k0$d;
    }
.end annotation


# static fields
.field public static C:Ljava/lang/reflect/Method;

.field public static D:Ljava/lang/reflect/Method;


# instance fields
.field public A:Z

.field public B:Landroidx/appcompat/widget/n;

.field public a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Landroidx/appcompat/widget/f0;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Landroidx/appcompat/widget/k0$d;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/AdapterView$OnItemClickListener;

.field public q:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final r:Landroidx/appcompat/widget/k0$g;

.field public final s:Landroidx/appcompat/widget/k0$f;

.field public final v:Landroidx/appcompat/widget/k0$e;

.field public final w:Landroidx/appcompat/widget/k0$c;

.field public final x:Landroid/os/Handler;

.field public final y:Landroid/graphics/Rect;

.field public z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "ListPopupWindow"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_36

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_a
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setClipToScreenEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/widget/k0;->C:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    const-string v3, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    :try_start_20
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setEpicenterBounds"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/k0;->D:Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroidx/appcompat/widget/k0;->d:I

    iput v0, p0, Landroidx/appcompat/widget/k0;->e:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroidx/appcompat/widget/k0;->h:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/k0;->l:I

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/appcompat/widget/k0;->m:I

    new-instance v1, Landroidx/appcompat/widget/k0$g;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k0$g;-><init>(Landroidx/appcompat/widget/k0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    new-instance v1, Landroidx/appcompat/widget/k0$f;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k0$f;-><init>(Landroidx/appcompat/widget/k0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->s:Landroidx/appcompat/widget/k0$f;

    new-instance v1, Landroidx/appcompat/widget/k0$e;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k0$e;-><init>(Landroidx/appcompat/widget/k0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->v:Landroidx/appcompat/widget/k0$e;

    new-instance v1, Landroidx/appcompat/widget/k0$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k0$c;-><init>(Landroidx/appcompat/widget/k0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->w:Landroidx/appcompat/widget/k0$c;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/appcompat/widget/k0;->a:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    sget-object v1, Lh/j;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lh/j;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/k0;->f:I

    sget v2, Lh/j;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/k0;->g:I

    const/4 v2, 0x1

    if-eqz v0, :cond_5f

    iput-boolean v2, p0, Landroidx/appcompat/widget/k0;->i:Z

    :cond_5f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidx/appcompat/widget/n;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final c()Landroidx/appcompat/widget/f0;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    return-object v0
.end method

.method public d(Landroid/content/Context;Z)Landroidx/appcompat/widget/f0;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/f0;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final dismiss()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(I)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/appcompat/widget/k0;->e:I

    goto :goto_1a

    :cond_18
    iput p1, p0, Landroidx/appcompat/widget/k0;->e:I

    :goto_1a
    return-void
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getHorizontalOffset()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/k0;->f:I

    return v0
.end method

.method public final getVerticalOffset()I
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->i:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/k0;->g:I

    return v0
.end method

.method public final isShowing()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/k0$d;

    if-nez v0, :cond_c

    new-instance v0, Landroidx/appcompat/widget/k0$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/k0$d;-><init>(Landroidx/appcompat/widget/k0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/k0$d;

    goto :goto_13

    :cond_c
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_13
    :goto_13
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->b:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/k0$d;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    if-eqz p1, :cond_25

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_25
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setHorizontalOffset(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/k0;->f:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/k0;->p:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/k0;->q:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public final setVerticalOffset(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/k0;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/k0;->i:Z

    return-void
.end method

.method public final show()V
    .registers 15

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    const/4 v1, 0x1

    if-nez v0, :cond_48

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroid/content/Context;

    iget-boolean v2, p0, Landroidx/appcompat/widget/k0;->A:Z

    xor-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/k0;->d(Landroid/content/Context;Z)Landroidx/appcompat/widget/f0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->p:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    new-instance v2, Landroidx/appcompat/widget/j0;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/j0;-><init>(Landroidx/appcompat/widget/k0;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->v:Landroidx/appcompat/widget/k0$e;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->q:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_40

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_40
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_50

    :cond_48
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_50
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6d

    iget-object v3, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iget-boolean v4, p0, Landroidx/appcompat/widget/k0;->i:Z

    if-nez v4, :cond_73

    neg-int v3, v3

    iput v3, p0, Landroidx/appcompat/widget/k0;->g:I

    goto :goto_73

    :cond_6d
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v0, v2

    :cond_73
    :goto_73
    iget-object v3, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7e

    move v3, v1

    goto :goto_7f

    :cond_7e
    move v3, v2

    :goto_7f
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    iget v6, p0, Landroidx/appcompat/widget/k0;->g:I

    iget-object v7, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-static {v7, v5, v6, v3}, Landroidx/appcompat/widget/k0$a;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v3

    iget v5, p0, Landroidx/appcompat/widget/k0;->d:I

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-ne v5, v7, :cond_91

    add-int/2addr v3, v0

    goto :goto_ec

    :cond_91
    iget v5, p0, Landroidx/appcompat/widget/k0;->e:I

    if-eq v5, v6, :cond_b7

    const/high16 v8, 0x40000000  # 2.0f

    if-eq v5, v7, :cond_9e

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_d1

    :cond_9e
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v9

    sub-int/2addr v5, v10

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_d1

    :cond_b7
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    sub-int/2addr v5, v9

    const/high16 v8, -0x80000000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_d1
    iget-object v8, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    add-int/2addr v3, v2

    invoke-virtual {v8, v5, v3}, Landroidx/appcompat/widget/f0;->a(II)I

    move-result v3

    if-lez v3, :cond_ea

    iget-object v5, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v8, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v0

    add-int/2addr v8, v2

    goto :goto_eb

    :cond_ea
    move v8, v2

    :goto_eb
    add-int/2addr v3, v8

    :goto_ec
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    if-ne v0, v4, :cond_f6

    move v0, v1

    goto :goto_f7

    :cond_f6
    move v0, v2

    :goto_f7
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    iget v5, p0, Landroidx/appcompat/widget/k0;->h:I

    invoke-static {v4, v5}, Landroidx/core/widget/i;->d(Landroid/widget/PopupWindow;I)V

    iget-object v4, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_16b

    iget-object v4, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_111

    return-void

    :cond_111
    iget v4, p0, Landroidx/appcompat/widget/k0;->e:I

    if-ne v4, v7, :cond_117

    move v4, v7

    goto :goto_11f

    :cond_117
    if-ne v4, v6, :cond_11f

    iget-object v4, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    :cond_11f
    :goto_11f
    iget v5, p0, Landroidx/appcompat/widget/k0;->d:I

    if-ne v5, v7, :cond_14b

    if-eqz v0, :cond_126

    goto :goto_127

    :cond_126
    move v3, v7

    :goto_127
    if-eqz v0, :cond_13b

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    iget v5, p0, Landroidx/appcompat/widget/k0;->e:I

    if-ne v5, v7, :cond_131

    move v5, v7

    goto :goto_132

    :cond_131
    move v5, v2

    :goto_132
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_14f

    :cond_13b
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    iget v5, p0, Landroidx/appcompat/widget/k0;->e:I

    if-ne v5, v7, :cond_142

    move v2, v7

    :cond_142
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_14f

    :cond_14b
    if-ne v5, v6, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v5

    :goto_14f
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    iget-object v9, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    iget v10, p0, Landroidx/appcompat/widget/k0;->f:I

    iget v11, p0, Landroidx/appcompat/widget/k0;->g:I

    if-gez v4, :cond_160

    move v12, v7

    goto :goto_161

    :cond_160
    move v12, v4

    :goto_161
    if-gez v3, :cond_165

    move v13, v7

    goto :goto_166

    :cond_165
    move v13, v3

    :goto_166
    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/widget/n;->update(Landroid/view/View;IIII)V

    goto/16 :goto_21c

    :cond_16b
    iget v0, p0, Landroidx/appcompat/widget/k0;->e:I

    if-ne v0, v7, :cond_171

    move v0, v7

    goto :goto_179

    :cond_171
    if-ne v0, v6, :cond_179

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_179
    :goto_179
    iget v4, p0, Landroidx/appcompat/widget/k0;->d:I

    if-ne v4, v7, :cond_17f

    move v3, v7

    goto :goto_183

    :cond_17f
    if-ne v4, v6, :cond_182

    goto :goto_183

    :cond_182
    move v3, v4

    :goto_183
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "ListPopupWindow"

    const/16 v4, 0x1c

    if-gt v0, v4, :cond_1ab

    sget-object v0, Landroidx/appcompat/widget/k0;->C:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b0

    :try_start_199
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    new-array v6, v1, [Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v6, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1a4} :catch_1a5

    goto :goto_1b0

    :catch_1a5
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    :cond_1ab
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/k0$b;->b(Landroid/widget/PopupWindow;Z)V

    :cond_1b0
    :goto_1b0
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    iget-object v5, p0, Landroidx/appcompat/widget/k0;->s:Landroidx/appcompat/widget/k0$f;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->k:Z

    if-eqz v0, :cond_1c7

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    iget-boolean v5, p0, Landroidx/appcompat/widget/k0;->j:Z

    invoke-static {v0, v5}, Landroidx/core/widget/i;->c(Landroid/widget/PopupWindow;Z)V

    :cond_1c7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_1e2

    sget-object v0, Landroidx/appcompat/widget/k0;->D:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e9

    :try_start_1cf
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/appcompat/widget/k0;->z:Landroid/graphics/Rect;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1da} :catch_1db

    goto :goto_1e9

    :catch_1db
    move-exception v0

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e9

    :cond_1e2
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->z:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Landroidx/appcompat/widget/k0$b;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    :cond_1e9
    :goto_1e9
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/widget/k0;->f:I

    iget v4, p0, Landroidx/appcompat/widget/k0;->g:I

    iget v5, p0, Landroidx/appcompat/widget/k0;->l:I

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v0, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->A:Z

    if-eqz v0, :cond_207

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/f0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_211

    :cond_207
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    if-eqz v0, :cond_211

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/f0;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_211
    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->A:Z

    if-nez v0, :cond_21c

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/k0;->w:Landroidx/appcompat/widget/k0$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21c
    :goto_21c
    return-void
.end method
