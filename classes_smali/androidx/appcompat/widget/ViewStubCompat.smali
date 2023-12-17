.class public final Landroidx/appcompat/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ViewStubCompat$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 7
    sget-object v1, Lh/j;->ViewStubCompat:[I

    .line 9
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    sget p2, Lh/j;->ViewStubCompat_android_inflatedId:I

    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 19
    move-result p2

    .line 20
    iput p2, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    .line 22
    sget p2, Lh/j;->ViewStubCompat_android_layout:I

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    move-result p2

    .line 28
    iput p2, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 30
    sget p2, Lh/j;->ViewStubCompat_android_id:I

    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    const/16 p1, 0x8

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ViewStubCompat;->setVisibility(I)V

    .line 47
    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 7
    if-eqz v1, :cond_4e

    .line 9
    iget v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 11
    if-eqz v1, :cond_46

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->d:Landroid/view/LayoutInflater;

    .line 17
    if-eqz v1, :cond_13

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    move-result-object v1

    .line 28
    :goto_1b
    iget v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    iget v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    .line 37
    const/4 v3, -0x1

    .line 38
    if-eq v2, v3, :cond_2a

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 43
    :cond_2a
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_3b

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 59
    goto :goto_3e

    .line 60
    :cond_3b
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 63
    :goto_3e
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 68
    iput-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->c:Ljava/lang/ref/WeakReference;

    .line 70
    return-object v1

    .line 71
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 73
    const-string v1, "ViewStub must have a valid layoutResource"

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw v0

    .line 79
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    const-string v1, "ViewStub must have a non-null ViewGroup viewParent"

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public getInflatedId()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    .line 3
    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->d:Landroid/view/LayoutInflater;

    .line 3
    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 3
    return v0
.end method

.method public final onMeasure(II)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 5
    return-void
.end method

.method public setInflatedId(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    .line 3
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->d:Landroid/view/LayoutInflater;

    .line 3
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 3
    return-void
.end method

.method public setOnInflateListener(Landroidx/appcompat/widget/ViewStubCompat$a;)V
    .registers 2

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->c:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    if-eqz v0, :cond_10

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    goto :goto_23

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    const-string v0, "setVisibility called on un-referenced view"

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    if-eqz p1, :cond_20

    .line 30
    const/4 v0, 0x4

    .line 31
    if-ne p1, v0, :cond_23

    .line 33
    :cond_20
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 36
    :cond_23
    :goto_23
    return-void
.end method
