.class public final Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$d;,
        Landroidx/appcompat/app/AlertController$b;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$c;
    }
.end annotation


# instance fields
.field public A:Landroidx/core/widget/NestedScrollView;

.field public B:I

.field public C:Landroid/graphics/drawable/Drawable;

.field public D:Landroid/widget/ImageView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/view/View;

.field public H:Landroid/widget/ListAdapter;

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Landroidx/appcompat/app/AlertController$c;

.field public final R:Landroidx/appcompat/app/AlertController$a;

.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/app/q;

.field public final c:Landroid/view/Window;

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public h:Landroid/view/View;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Landroid/widget/Button;

.field public p:Ljava/lang/CharSequence;

.field public q:Landroid/os/Message;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Landroid/widget/Button;

.field public t:Ljava/lang/CharSequence;

.field public u:Landroid/os/Message;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Landroid/widget/Button;

.field public x:Ljava/lang/CharSequence;

.field public y:Landroid/os/Message;

.field public z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/q;Landroid/view/Window;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->n:Z

    .line 7
    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Landroidx/appcompat/app/AlertController;->I:I

    .line 12
    new-instance v1, Landroidx/appcompat/app/AlertController$a;

    .line 14
    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$a;-><init>(Landroidx/appcompat/app/AlertController;)V

    .line 17
    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->R:Landroidx/appcompat/app/AlertController$a;

    .line 19
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/q;

    .line 23
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 25
    new-instance p3, Landroidx/appcompat/app/AlertController$c;

    .line 27
    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertController$c;-><init>(Landroid/content/DialogInterface;)V

    .line 30
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->Q:Landroidx/appcompat/app/AlertController$c;

    .line 32
    sget-object p3, Lh/j;->AlertDialog:[I

    .line 34
    sget v1, Lh/a;->alertDialogStyle:I

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 40
    move-result-object p1

    .line 41
    sget p3, Lh/j;->AlertDialog_android_layout:I

    .line 43
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 46
    move-result p3

    .line 47
    iput p3, p0, Landroidx/appcompat/app/AlertController;->J:I

    .line 49
    sget p3, Lh/j;->AlertDialog_buttonPanelSideLayout:I

    .line 51
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 54
    move-result p3

    .line 55
    iput p3, p0, Landroidx/appcompat/app/AlertController;->K:I

    .line 57
    sget p3, Lh/j;->AlertDialog_listLayout:I

    .line 59
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 62
    move-result p3

    .line 63
    iput p3, p0, Landroidx/appcompat/app/AlertController;->L:I

    .line 65
    sget p3, Lh/j;->AlertDialog_multiChoiceItemLayout:I

    .line 67
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 70
    move-result p3

    .line 71
    iput p3, p0, Landroidx/appcompat/app/AlertController;->M:I

    .line 73
    sget p3, Lh/j;->AlertDialog_singleChoiceItemLayout:I

    .line 75
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 78
    move-result p3

    .line 79
    iput p3, p0, Landroidx/appcompat/app/AlertController;->N:I

    .line 81
    sget p3, Lh/j;->AlertDialog_listItemLayout:I

    .line 83
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 86
    move-result p3

    .line 87
    iput p3, p0, Landroidx/appcompat/app/AlertController;->O:I

    .line 89
    sget p3, Lh/j;->AlertDialog_showTitle:I

    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 95
    move-result p3

    .line 96
    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->P:Z

    .line 98
    sget p3, Lh/j;->AlertDialog_buttonIconDimen:I

    .line 100
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 103
    move-result p3

    .line 104
    iput p3, p0, Landroidx/appcompat/app/AlertController;->d:I

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/q;->supportRequestWindowFeature(I)Z

    .line 112
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v0

    .line 21
    :cond_14
    if-lez v0, :cond_23

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_14

    .line 35
    return v1

    .line 36
    :cond_23
    return v2
.end method

.method public static b(Landroid/widget/Button;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 10
    const/high16 v1, 0x3f000000  # 0.5f

    .line 12
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    return-void
.end method

.method public static c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    .line 1
    if-nez p0, :cond_f

    .line 3
    instance-of p0, p1, Landroid/view/ViewStub;

    .line 5
    if-eqz p0, :cond_c

    .line 7
    check-cast p1, Landroid/view/ViewStub;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    :cond_c
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    return-object p1

    .line 16
    :cond_f
    if-eqz p1, :cond_1e

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 24
    if-eqz v1, :cond_1e

    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    :cond_1e
    instance-of p1, p0, Landroid/view/ViewStub;

    .line 33
    if-eqz p1, :cond_28

    .line 35
    check-cast p0, Landroid/view/ViewStub;

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 40
    move-result-object p0

    .line 41
    :cond_28
    check-cast p0, Landroid/view/ViewGroup;

    .line 43
    return-object p0
.end method


# virtual methods
.method public final d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1
    if-eqz p3, :cond_9

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->Q:Landroidx/appcompat/app/AlertController$c;

    .line 5
    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p3

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p3, 0x0

    .line 11
    :goto_a
    const/4 v0, -0x3

    .line 12
    if-eq p1, v0, :cond_29

    .line 14
    const/4 v0, -0x2

    .line 15
    if-eq p1, v0, :cond_22

    .line 17
    const/4 v0, -0x1

    .line 18
    if-ne p1, v0, :cond_1a

    .line 20
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    .line 22
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->q:Landroid/os/Message;

    .line 24
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    .line 26
    goto :goto_2f

    .line 27
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string p2, "Button does not exist"

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    :cond_22
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    .line 37
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->u:Landroid/os/Message;

    .line 39
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    .line 44
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->y:Landroid/os/Message;

    .line 46
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    .line 48
    :goto_2f
    return-void
.end method
