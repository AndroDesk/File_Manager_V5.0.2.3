.class public Landroidx/appcompat/view/menu/m;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/m$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/view/menu/h;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Z

.field public i:Landroidx/appcompat/view/menu/n$a;

.field public j:Landroidx/appcompat/view/menu/l;

.field public k:Landroid/widget/PopupWindow$OnDismissListener;

.field public final l:Landroidx/appcompat/view/menu/m$a;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 3
    iput v0, p0, Landroidx/appcompat/view/menu/m;->g:I

    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/m$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/m$a;-><init>(Landroidx/appcompat/view/menu/m;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/m;->l:Landroidx/appcompat/view/menu/m$a;

    .line 5
    iput-object p3, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    .line 6
    iput-object p5, p0, Landroidx/appcompat/view/menu/m;->b:Landroidx/appcompat/view/menu/h;

    .line 7
    iput-object p4, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 8
    iput-boolean p6, p0, Landroidx/appcompat/view/menu/m;->c:Z

    .line 9
    iput p1, p0, Landroidx/appcompat/view/menu/m;->d:I

    .line 10
    iput p2, p0, Landroidx/appcompat/view/menu/m;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroid/view/View;ZI)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p5

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/m;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/l;
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 3
    if-nez v0, :cond_78

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    .line 7
    const-string v1, "window"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/graphics/Point;

    .line 21
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 24
    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/m$b;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 27
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 29
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v1

    .line 41
    sget v2, Lh/d;->abc_cascading_menus_min_smallest_width:I

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result v1

    .line 47
    if-lt v0, v1, :cond_32

    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    const/4 v0, 0x0

    .line 52
    :goto_33
    if-eqz v0, :cond_46

    .line 54
    new-instance v0, Landroidx/appcompat/view/menu/d;

    .line 56
    iget-object v2, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    .line 58
    iget-object v3, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 60
    iget v4, p0, Landroidx/appcompat/view/menu/m;->d:I

    .line 62
    iget v5, p0, Landroidx/appcompat/view/menu/m;->e:I

    .line 64
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/m;->c:Z

    .line 66
    move-object v1, v0

    .line 67
    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/d;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .line 70
    goto :goto_58

    .line 71
    :cond_46
    new-instance v0, Landroidx/appcompat/view/menu/r;

    .line 73
    iget-object v10, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    .line 75
    iget-object v12, p0, Landroidx/appcompat/view/menu/m;->b:Landroidx/appcompat/view/menu/h;

    .line 77
    iget-object v11, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 79
    iget v8, p0, Landroidx/appcompat/view/menu/m;->d:I

    .line 81
    iget v9, p0, Landroidx/appcompat/view/menu/m;->e:I

    .line 83
    iget-boolean v13, p0, Landroidx/appcompat/view/menu/m;->c:Z

    .line 85
    move-object v7, v0

    .line 86
    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/r;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V

    .line 89
    :goto_58
    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->b:Landroidx/appcompat/view/menu/h;

    .line 91
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->a(Landroidx/appcompat/view/menu/h;)V

    .line 94
    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->l:Landroidx/appcompat/view/menu/m$a;

    .line 96
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 99
    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 101
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->d(Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->i:Landroidx/appcompat/view/menu/n$a;

    .line 106
    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/n;->setCallback(Landroidx/appcompat/view/menu/n$a;)V

    .line 109
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/m;->h:Z

    .line 111
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->e(Z)V

    .line 114
    iget v1, p0, Landroidx/appcompat/view/menu/m;->g:I

    .line 116
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->f(I)V

    .line 119
    iput-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 121
    :cond_78
    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 123
    return-object v0
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public c()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->k:Landroid/widget/PopupWindow$OnDismissListener;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 11
    :cond_a
    return-void
.end method

.method public final d(IIZZ)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m;->a()Landroidx/appcompat/view/menu/l;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/l;->h(Z)V

    .line 8
    if-eqz p3, :cond_49

    .line 10
    iget p3, p0, Landroidx/appcompat/view/menu/m;->g:I

    .line 12
    iget-object p4, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 14
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 16
    invoke-static {p4}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 19
    move-result p4

    .line 20
    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 23
    move-result p3

    .line 24
    and-int/lit8 p3, p3, 0x7

    .line 26
    const/4 p4, 0x5

    .line 27
    if-ne p3, p4, :cond_23

    .line 29
    iget-object p3, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 31
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 34
    move-result p3

    .line 35
    sub-int/2addr p1, p3

    .line 36
    :cond_23
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l;->g(I)V

    .line 39
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/l;->i(I)V

    .line 42
    iget-object p3, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    .line 44
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    move-result-object p3

    .line 52
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 54
    const/high16 p4, 0x42400000  # 48.0f

    .line 56
    mul-float/2addr p3, p4

    .line 57
    const/high16 p4, 0x40000000  # 2.0f

    .line 59
    div-float/2addr p3, p4

    .line 60
    float-to-int p3, p3

    .line 61
    new-instance p4, Landroid/graphics/Rect;

    .line 63
    sub-int v1, p1, p3

    .line 65
    sub-int v2, p2, p3

    .line 67
    add-int/2addr p1, p3

    .line 68
    add-int/2addr p2, p3

    .line 69
    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    iput-object p4, v0, Landroidx/appcompat/view/menu/l;->a:Landroid/graphics/Rect;

    .line 74
    :cond_49
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->show()V

    .line 77
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->k:Landroid/widget/PopupWindow$OnDismissListener;

    .line 3
    return-void
.end method
