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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Landroidx/appcompat/view/menu/m;->g:I

    new-instance v0, Landroidx/appcompat/view/menu/m$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/m$a;-><init>(Landroidx/appcompat/view/menu/m;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/m;->l:Landroidx/appcompat/view/menu/m$a;

    iput-object p3, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    iput-object p5, p0, Landroidx/appcompat/view/menu/m;->b:Landroidx/appcompat/view/menu/h;

    iput-object p4, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/m;->c:Z

    iput p1, p0, Landroidx/appcompat/view/menu/m;->d:I

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

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/m;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/l;
    .registers 15

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    if-nez v0, :cond_78

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/m$b;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lh/d;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_46

    new-instance v0, Landroidx/appcompat/view/menu/d;

    iget-object v2, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    iget v4, p0, Landroidx/appcompat/view/menu/m;->d:I

    iget v5, p0, Landroidx/appcompat/view/menu/m;->e:I

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/m;->c:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/d;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_58

    :cond_46
    new-instance v0, Landroidx/appcompat/view/menu/r;

    iget-object v10, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    iget-object v12, p0, Landroidx/appcompat/view/menu/m;->b:Landroidx/appcompat/view/menu/h;

    iget-object v11, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    iget v8, p0, Landroidx/appcompat/view/menu/m;->d:I

    iget v9, p0, Landroidx/appcompat/view/menu/m;->e:I

    iget-boolean v13, p0, Landroidx/appcompat/view/menu/m;->c:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/r;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V

    :goto_58
    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->b:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->a(Landroidx/appcompat/view/menu/h;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->l:Landroidx/appcompat/view/menu/m$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->d(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/m;->i:Landroidx/appcompat/view/menu/n$a;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/n;->setCallback(Landroidx/appcompat/view/menu/n$a;)V

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/m;->h:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->e(Z)V

    iget v1, p0, Landroidx/appcompat/view/menu/m;->g:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->f(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    :cond_78
    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_a
    return-void
.end method

.method public final d(IIZZ)V
    .registers 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m;->a()Landroidx/appcompat/view/menu/l;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/l;->h(Z)V

    if-eqz p3, :cond_49

    iget p3, p0, Landroidx/appcompat/view/menu/m;->g:I

    iget-object p4, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p4}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result p4

    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_23

    iget-object p3, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    :cond_23
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l;->g(I)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/l;->i(I)V

    iget-object p3, p0, Landroidx/appcompat/view/menu/m;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000  # 48.0f

    mul-float/2addr p3, p4

    const/high16 p4, 0x40000000  # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, v0, Landroidx/appcompat/view/menu/l;->a:Landroid/graphics/Rect;

    :cond_49
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->show()V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->k:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method
