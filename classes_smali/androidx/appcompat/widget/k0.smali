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

    .line 1
    const-string v0, "ListPopupWindow"

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    const/16 v2, 0x1c

    .line 7
    if-gt v1, v2, :cond_36

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_a
    const-class v3, Landroid/widget/PopupWindow;

    .line 13
    const-string v4, "setClipToScreenEnabled"

    .line 15
    new-array v5, v2, [Ljava/lang/Class;

    .line 17
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 19
    aput-object v6, v5, v1

    .line 21
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v3

    .line 25
    sput-object v3, Landroidx/appcompat/widget/k0;->C:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 27
    goto :goto_20

    .line 28
    :catch_1b
    const-string v3, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 30
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_20
    :try_start_20
    const-class v3, Landroid/widget/PopupWindow;

    .line 35
    const-string v4, "setEpicenterBounds"

    .line 37
    new-array v2, v2, [Ljava/lang/Class;

    .line 39
    const-class v5, Landroid/graphics/Rect;

    .line 41
    aput-object v5, v2, v1

    .line 43
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    move-result-object v1

    .line 47
    sput-object v1, Landroidx/appcompat/widget/k0;->D:Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_30} :catch_31

    .line 49
    goto :goto_36

    .line 50
    :catch_31
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/k0;->d:I

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 9
    const/16 v0, 0x3ea

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/k0;->h:I

    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/appcompat/widget/k0;->l:I

    .line 16
    const v1, 0x7fffffff

    .line 19
    iput v1, p0, Landroidx/appcompat/widget/k0;->m:I

    .line 21
    new-instance v1, Landroidx/appcompat/widget/k0$g;

    .line 23
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k0$g;-><init>(Landroidx/appcompat/widget/k0;)V

    .line 26
    iput-object v1, p0, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    .line 28
    new-instance v1, Landroidx/appcompat/widget/k0$f;

    .line 30
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k0$f;-><init>(Landroidx/appcompat/widget/k0;)V

    .line 33
    iput-object v1, p0, Landroidx/appcompat/widget/k0;->s:Landroidx/appcompat/widget/k0$f;

    .line 35
    new-instance v1, Landroidx/appcompat/widget/k0$e;

    .line 37
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k0$e;-><init>(Landroidx/appcompat/widget/k0;)V

    .line 40
    iput-object v1, p0, Landroidx/appcompat/widget/k0;->v:Landroidx/appcompat/widget/k0$e;

    .line 42
    new-instance v1, Landroidx/appcompat/widget/k0$c;

    .line 44
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k0$c;-><init>(Landroidx/appcompat/widget/k0;)V

    .line 47
    iput-object v1, p0, Landroidx/appcompat/widget/k0;->w:Landroidx/appcompat/widget/k0$c;

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    .line 51
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 54
    iput-object v1, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    .line 56
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->a:Landroid/content/Context;

    .line 58
    new-instance v1, Landroid/os/Handler;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    iput-object v1, p0, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    .line 69
    sget-object v1, Lh/j;->ListPopupWindow:[I

    .line 71
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 74
    move-result-object v1

    .line 75
    sget v2, Lh/j;->ListPopupWindow_android_dropDownHorizontalOffset:I

    .line 77
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 80
    move-result v2

    .line 81
    iput v2, p0, Landroidx/appcompat/widget/k0;->f:I

    .line 83
    sget v2, Lh/j;->ListPopupWindow_android_dropDownVerticalOffset:I

    .line 85
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 88
    move-result v0

    .line 89
    iput v0, p0, Landroidx/appcompat/widget/k0;->g:I

    .line 91
    const/4 v2, 0x1

    .line 92
    if-eqz v0, :cond_5f

    .line 94
    iput-boolean v2, p0, Landroidx/appcompat/widget/k0;->i:Z

    .line 96
    :cond_5f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    new-instance v0, Landroidx/appcompat/widget/n;

    .line 101
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    iput-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 106
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 109
    return-void
.end method


# virtual methods
.method public final c()Landroidx/appcompat/widget/f0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 3
    return-object v0
.end method

.method public d(Landroid/content/Context;Z)Landroidx/appcompat/widget/f0;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/f0;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;Z)V

    .line 6
    return-object v0
.end method

.method public final dismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 12
    iput-object v1, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method

.method public final e(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_18

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    .line 16
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 18
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 20
    add-int/2addr v1, v0

    .line 21
    add-int/2addr v1, p1

    .line 22
    iput v1, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    iput p1, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 27
    :goto_1a
    return-void
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getHorizontalOffset()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/k0;->f:I

    .line 3
    return v0
.end method

.method public final getVerticalOffset()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->i:Z

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/k0;->g:I

    .line 9
    return v0
.end method

.method public final isShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/k0$d;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Landroidx/appcompat/widget/k0$d;

    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/k0$d;-><init>(Landroidx/appcompat/widget/k0;)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/k0$d;

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->b:Landroid/widget/ListAdapter;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 20
    :cond_13
    :goto_13
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->b:Landroid/widget/ListAdapter;

    .line 22
    if-eqz p1, :cond_1c

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/k0$d;

    .line 26
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 29
    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 31
    if-eqz p1, :cond_25

    .line 33
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->b:Landroid/widget/ListAdapter;

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    :cond_25
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public final setHorizontalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/k0;->f:I

    .line 3
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 6
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->p:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->q:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 3
    return-void
.end method

.method public final setVerticalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/k0;->g:I

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/k0;->i:Z

    .line 6
    return-void
.end method

.method public final show()V
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_48

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroid/content/Context;

    .line 8
    iget-boolean v2, p0, Landroidx/appcompat/widget/k0;->A:Z

    .line 10
    xor-int/2addr v2, v1

    .line 11
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/k0;->d(Landroid/content/Context;Z)Landroidx/appcompat/widget/f0;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 17
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->b:Landroid/widget/ListAdapter;

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 24
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->p:Landroid/widget/AdapterView$OnItemClickListener;

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 29
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 34
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 39
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 41
    new-instance v2, Landroidx/appcompat/widget/j0;

    .line 43
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/j0;-><init>(Landroidx/appcompat/widget/k0;)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 49
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 51
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->v:Landroidx/appcompat/widget/k0$e;

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 56
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->q:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 58
    if-eqz v0, :cond_40

    .line 60
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 62
    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 65
    :cond_40
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 67
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 69
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 72
    goto :goto_50

    .line 73
    :cond_48
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 75
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    :goto_50
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 83
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v0

    .line 87
    const/4 v2, 0x0

    .line 88
    if-eqz v0, :cond_6d

    .line 90
    iget-object v3, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    .line 92
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 95
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    .line 97
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 99
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 101
    add-int/2addr v0, v3

    .line 102
    iget-boolean v4, p0, Landroidx/appcompat/widget/k0;->i:Z

    .line 104
    if-nez v4, :cond_73

    .line 106
    neg-int v3, v3

    .line 107
    iput v3, p0, Landroidx/appcompat/widget/k0;->g:I

    .line 109
    goto :goto_73

    .line 110
    :cond_6d
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 115
    move v0, v2

    .line 116
    :cond_73
    :goto_73
    iget-object v3, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 118
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 121
    move-result v3

    .line 122
    const/4 v4, 0x2

    .line 123
    if-ne v3, v4, :cond_7e

    .line 125
    move v3, v1

    .line 126
    goto :goto_7f

    .line 127
    :cond_7e
    move v3, v2

    .line 128
    :goto_7f
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 130
    iget v6, p0, Landroidx/appcompat/widget/k0;->g:I

    .line 132
    iget-object v7, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 134
    invoke-static {v7, v5, v6, v3}, Landroidx/appcompat/widget/k0$a;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    .line 137
    move-result v3

    .line 138
    iget v5, p0, Landroidx/appcompat/widget/k0;->d:I

    .line 140
    const/4 v6, -0x2

    .line 141
    const/4 v7, -0x1

    .line 142
    if-ne v5, v7, :cond_91

    .line 144
    add-int/2addr v3, v0

    .line 145
    goto :goto_ec

    .line 146
    :cond_91
    iget v5, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 148
    if-eq v5, v6, :cond_b7

    .line 150
    const/high16 v8, 0x40000000  # 2.0f

    .line 152
    if-eq v5, v7, :cond_9e

    .line 154
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 157
    move-result v5

    .line 158
    goto :goto_d1

    .line 159
    :cond_9e
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->a:Landroid/content/Context;

    .line 161
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 168
    move-result-object v5

    .line 169
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 171
    iget-object v9, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    .line 173
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 175
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 177
    add-int/2addr v10, v9

    .line 178
    sub-int/2addr v5, v10

    .line 179
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 182
    move-result v5

    .line 183
    goto :goto_d1

    .line 184
    :cond_b7
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->a:Landroid/content/Context;

    .line 186
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 193
    move-result-object v5

    .line 194
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 196
    iget-object v8, p0, Landroidx/appcompat/widget/k0;->y:Landroid/graphics/Rect;

    .line 198
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 200
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 202
    add-int/2addr v9, v8

    .line 203
    sub-int/2addr v5, v9

    .line 204
    const/high16 v8, -0x80000000

    .line 206
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 209
    move-result v5

    .line 210
    :goto_d1
    iget-object v8, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 212
    add-int/2addr v3, v2

    .line 213
    invoke-virtual {v8, v5, v3}, Landroidx/appcompat/widget/f0;->a(II)I

    .line 216
    move-result v3

    .line 217
    if-lez v3, :cond_ea

    .line 219
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 221
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 224
    move-result v5

    .line 225
    iget-object v8, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 227
    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    .line 230
    move-result v8

    .line 231
    add-int/2addr v8, v5

    .line 232
    add-int/2addr v8, v0

    .line 233
    add-int/2addr v8, v2

    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    move v8, v2

    .line 236
    :goto_eb
    add-int/2addr v3, v8

    .line 237
    :goto_ec
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 239
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 242
    move-result v0

    .line 243
    if-ne v0, v4, :cond_f6

    .line 245
    move v0, v1

    .line 246
    goto :goto_f7

    .line 247
    :cond_f6
    move v0, v2

    .line 248
    :goto_f7
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 250
    iget v5, p0, Landroidx/appcompat/widget/k0;->h:I

    .line 252
    invoke-static {v4, v5}, Landroidx/core/widget/i;->d(Landroid/widget/PopupWindow;I)V

    .line 255
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 257
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_16b

    .line 263
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 265
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 267
    invoke-static {v4}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 270
    move-result v4

    .line 271
    if-nez v4, :cond_111

    .line 273
    return-void

    .line 274
    :cond_111
    iget v4, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 276
    if-ne v4, v7, :cond_117

    .line 278
    move v4, v7

    .line 279
    goto :goto_11f

    .line 280
    :cond_117
    if-ne v4, v6, :cond_11f

    .line 282
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 284
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 287
    move-result v4

    .line 288
    :cond_11f
    :goto_11f
    iget v5, p0, Landroidx/appcompat/widget/k0;->d:I

    .line 290
    if-ne v5, v7, :cond_14b

    .line 292
    if-eqz v0, :cond_126

    .line 294
    goto :goto_127

    .line 295
    :cond_126
    move v3, v7

    .line 296
    :goto_127
    if-eqz v0, :cond_13b

    .line 298
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 300
    iget v5, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 302
    if-ne v5, v7, :cond_131

    .line 304
    move v5, v7

    .line 305
    goto :goto_132

    .line 306
    :cond_131
    move v5, v2

    .line 307
    :goto_132
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 310
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 312
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 315
    goto :goto_14f

    .line 316
    :cond_13b
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 318
    iget v5, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 320
    if-ne v5, v7, :cond_142

    .line 322
    move v2, v7

    .line 323
    :cond_142
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 326
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 328
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 331
    goto :goto_14f

    .line 332
    :cond_14b
    if-ne v5, v6, :cond_14e

    .line 334
    goto :goto_14f

    .line 335
    :cond_14e
    move v3, v5

    .line 336
    :goto_14f
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 341
    iget-object v8, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 343
    iget-object v9, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 345
    iget v10, p0, Landroidx/appcompat/widget/k0;->f:I

    .line 347
    iget v11, p0, Landroidx/appcompat/widget/k0;->g:I

    .line 349
    if-gez v4, :cond_160

    .line 351
    move v12, v7

    .line 352
    goto :goto_161

    .line 353
    :cond_160
    move v12, v4

    .line 354
    :goto_161
    if-gez v3, :cond_165

    .line 356
    move v13, v7

    .line 357
    goto :goto_166

    .line 358
    :cond_165
    move v13, v3

    .line 359
    :goto_166
    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/widget/n;->update(Landroid/view/View;IIII)V

    .line 362
    goto/16 :goto_21c

    .line 364
    :cond_16b
    iget v0, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 366
    if-ne v0, v7, :cond_171

    .line 368
    move v0, v7

    .line 369
    goto :goto_179

    .line 370
    :cond_171
    if-ne v0, v6, :cond_179

    .line 372
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 377
    move-result v0

    .line 378
    :cond_179
    :goto_179
    iget v4, p0, Landroidx/appcompat/widget/k0;->d:I

    .line 380
    if-ne v4, v7, :cond_17f

    .line 382
    move v3, v7

    .line 383
    goto :goto_183

    .line 384
    :cond_17f
    if-ne v4, v6, :cond_182

    .line 386
    goto :goto_183

    .line 387
    :cond_182
    move v3, v4

    .line 388
    :goto_183
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 390
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 393
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 395
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 400
    const-string v3, "ListPopupWindow"

    .line 402
    const/16 v4, 0x1c

    .line 404
    if-gt v0, v4, :cond_1ab

    .line 406
    sget-object v0, Landroidx/appcompat/widget/k0;->C:Ljava/lang/reflect/Method;

    .line 408
    if-eqz v0, :cond_1b0

    .line 410
    :try_start_199
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 412
    new-array v6, v1, [Ljava/lang/Object;

    .line 414
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 416
    aput-object v8, v6, v2

    .line 418
    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1a4} :catch_1a5

    .line 421
    goto :goto_1b0

    .line 422
    :catch_1a5
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 424
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    goto :goto_1b0

    .line 428
    :cond_1ab
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 430
    invoke-static {v0, v1}, Landroidx/appcompat/widget/k0$b;->b(Landroid/widget/PopupWindow;Z)V

    .line 433
    :cond_1b0
    :goto_1b0
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 435
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 438
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 440
    iget-object v5, p0, Landroidx/appcompat/widget/k0;->s:Landroidx/appcompat/widget/k0$f;

    .line 442
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 445
    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->k:Z

    .line 447
    if-eqz v0, :cond_1c7

    .line 449
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 451
    iget-boolean v5, p0, Landroidx/appcompat/widget/k0;->j:Z

    .line 453
    invoke-static {v0, v5}, Landroidx/core/widget/i;->c(Landroid/widget/PopupWindow;Z)V

    .line 456
    :cond_1c7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 458
    if-gt v0, v4, :cond_1e2

    .line 460
    sget-object v0, Landroidx/appcompat/widget/k0;->D:Ljava/lang/reflect/Method;

    .line 462
    if-eqz v0, :cond_1e9

    .line 464
    :try_start_1cf
    iget-object v4, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 466
    new-array v5, v1, [Ljava/lang/Object;

    .line 468
    iget-object v6, p0, Landroidx/appcompat/widget/k0;->z:Landroid/graphics/Rect;

    .line 470
    aput-object v6, v5, v2

    .line 472
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1da} :catch_1db

    .line 475
    goto :goto_1e9

    .line 476
    :catch_1db
    move-exception v0

    .line 477
    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 479
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    goto :goto_1e9

    .line 483
    :cond_1e2
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 485
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->z:Landroid/graphics/Rect;

    .line 487
    invoke-static {v0, v2}, Landroidx/appcompat/widget/k0$b;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    .line 490
    :cond_1e9
    :goto_1e9
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 492
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 494
    iget v3, p0, Landroidx/appcompat/widget/k0;->f:I

    .line 496
    iget v4, p0, Landroidx/appcompat/widget/k0;->g:I

    .line 498
    iget v5, p0, Landroidx/appcompat/widget/k0;->l:I

    .line 500
    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 503
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 505
    invoke-virtual {v0, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 508
    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->A:Z

    .line 510
    if-eqz v0, :cond_207

    .line 512
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 514
    invoke-virtual {v0}, Landroidx/appcompat/widget/f0;->isInTouchMode()Z

    .line 517
    move-result v0

    .line 518
    if-eqz v0, :cond_211

    .line 520
    :cond_207
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 522
    if-eqz v0, :cond_211

    .line 524
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/f0;->setListSelectionHidden(Z)V

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 530
    :cond_211
    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->A:Z

    .line 532
    if-nez v0, :cond_21c

    .line 534
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    .line 536
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->w:Landroidx/appcompat/widget/k0$c;

    .line 538
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    :cond_21c
    :goto_21c
    return-void
.end method
