.class public final Landroidx/fragment/app/FragmentContainerView;
.super Landroid/widget/FrameLayout;
.source "FragmentContainerView.kt"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/view/View$OnApplyWindowInsetsListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentContainerView;->a:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentContainerView;->b:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentContainerView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentContainerView;->a:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentContainerView;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentContainerView;->d:Z

    if-eqz p2, :cond_68

    .line 9
    invoke-interface {p2}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v1

    .line 10
    sget-object v2, Lw0/c;->FragmentContainerView:[I

    const-string v3, "FragmentContainerView"

    invoke-static {v2, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez v1, :cond_36

    .line 12
    sget p2, Lw0/c;->FragmentContainerView_android_name:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p2, "android:name"

    goto :goto_38

    :cond_36
    const-string p2, "class"

    .line 13
    :goto_38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_68

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_68

    .line 15
    :cond_44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentContainerView must be within a FragmentActivity to use "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    :goto_68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/FragmentManager;)V
    .registers 9
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p3, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->a:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->d:Z

    .line 22
    invoke-interface {p2}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v1

    .line 23
    sget-object v2, Lw0/c;->FragmentContainerView:[I

    const-string v3, "FragmentContainerView"

    invoke-static {v2, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 24
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez v1, :cond_3b

    .line 25
    sget v1, Lw0/c;->FragmentContainerView_android_name:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_3b
    sget v3, Lw0/c;->FragmentContainerView_android_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    .line 29
    invoke-virtual {p3, v2}, Landroidx/fragment/app/FragmentManager;->C(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v1, :cond_97

    if-nez v4, :cond_97

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6a

    if-eqz v3, :cond_5c

    const-string p1, " with tag "

    .line 30
    invoke-static {p1, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5e

    :cond_5c
    const-string p1, ""

    .line 31
    :goto_5e
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "FragmentContainerView must have an android:id to add Fragment "

    .line 32
    invoke-static {p3, v1, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_6a
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "fm.fragmentFactory.insta…ontext.classLoader, name)"

    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, p1, p2, v2}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 36
    new-instance p1, Landroidx/fragment/app/a;

    invoke-direct {p1, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 37
    iput-boolean v0, p1, Landroidx/fragment/app/b0;->r:Z

    .line 38
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p2

    .line 40
    invoke-virtual {p1, p2, v1, v3, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/b0;->g()V

    .line 42
    iget-object p2, p1, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentManager;->y(Landroidx/fragment/app/FragmentManager$n;Z)V

    .line 43
    :cond_97
    iget-object p1, p3, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    invoke-virtual {p1}, Landroidx/fragment/app/a0;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a1
    :goto_a1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/y;

    .line 44
    iget-object p3, p2, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 45
    iget v0, p3, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a1

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_a1

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a1

    .line 47
    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {p2}, Landroidx/fragment/app/y;->b()V

    goto :goto_a1

    :cond_c7
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "child"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v0, Lw0/b;->fragment_container_view_tag:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    .line 14
    if-eqz v1, :cond_12

    .line 16
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    if-eqz v0, :cond_19

    .line 22
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 25
    return-void

    .line 26
    :cond_19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string p3, "Views added to a FragmentContainerView must be associated with a Fragment. View "

    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, " is not associated with a Fragment."

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p2
.end method

.method public final dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6
    .param p1  # Landroid/view/WindowInsets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "insets"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Landroidx/fragment/app/FragmentContainerView;->c:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 13
    if-eqz v2, :cond_1c

    .line 15
    invoke-interface {v2, p0, p1}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)"

    .line 21
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v1, v0}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    invoke-static {p0, v1}, Lm0/g0;->h(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 32
    move-result-object v0

    .line 33
    :goto_20
    const-string v1, "if (applyWindowInsetsLis…, insetsCompat)\n        }"

    .line 35
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v1, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 40
    invoke-virtual {v1}, Lm0/r0$k;->m()Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3e

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    move-result v2

    .line 51
    :goto_32
    if-ge v1, v2, :cond_3e

    .line 53
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3, v0}, Lm0/g0;->b(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_32

    .line 63
    :cond_3e
    return-object p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->d:Z

    .line 8
    if-eqz v0, :cond_23

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_23

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/View;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 31
    move-result-wide v2

    .line 32
    invoke-super {p0, p1, v1, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 35
    goto :goto_f

    .line 36
    :cond_23
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 39
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "child"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->d:Z

    .line 13
    if-eqz v0, :cond_22

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->a:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 23
    if-eqz v0, :cond_22

    .line 25
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->a:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_22

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public final endViewTransition(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->b:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_15

    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->d:Z

    .line 22
    :cond_15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">()TF;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :goto_2
    if-eqz v1, :cond_22

    .line 5
    sget v2, Lw0/b;->fragment_container_view_tag:I

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    instance-of v3, v2, Landroidx/fragment/app/Fragment;

    .line 13
    if-eqz v3, :cond_11

    .line 15
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move-object v2, v0

    .line 19
    :goto_12
    if-eqz v2, :cond_15

    .line 21
    goto :goto_23

    .line 22
    :cond_15
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v1

    .line 26
    instance-of v2, v1, Landroid/view/View;

    .line 28
    if-eqz v2, :cond_20

    .line 30
    check-cast v1, Landroid/view/View;

    .line 32
    goto :goto_2

    .line 33
    :cond_20
    move-object v1, v0

    .line 34
    goto :goto_2

    .line 35
    :cond_22
    move-object v2, v0

    .line 36
    :goto_23
    if-eqz v2, :cond_54

    .line 38
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_30

    .line 44
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 47
    move-result-object v0

    .line 48
    goto :goto_71

    .line 49
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v3, "The Fragment "

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, " that owns View "

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v2, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    throw v0

    .line 85
    :cond_54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v1

    .line 89
    :goto_58
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 91
    if-eqz v2, :cond_6b

    .line 93
    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    .line 95
    if-eqz v2, :cond_64

    .line 97
    move-object v0, v1

    .line 98
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 100
    goto :goto_6b

    .line 101
    :cond_64
    check-cast v1, Landroid/content/ContextWrapper;

    .line 103
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 106
    move-result-object v1

    .line 107
    goto :goto_58

    .line 108
    :cond_6b
    :goto_6b
    if-eqz v0, :cond_7a

    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 113
    move-result-object v0

    .line 114
    :goto_71
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 117
    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->C(I)Landroidx/fragment/app/Fragment;

    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :cond_7a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-string v2, "View "

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, " is not within a subclass of FragmentActivity."

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    throw v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3
    .param p1  # Landroid/view/WindowInsets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "insets"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final removeAllViewsInLayout()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    const/4 v1, -0x1

    .line 8
    if-ge v1, v0, :cond_18

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "view"

    .line 16
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentContainerView;->a(Landroid/view/View;)V

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_6

    .line 25
    :cond_18
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 28
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->a(Landroid/view/View;)V

    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public final removeViewAt(I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "view"

    .line 7
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentContainerView;->a(Landroid/view/View;)V

    .line 13
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 16
    return-void
.end method

.method public final removeViewInLayout(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->a(Landroid/view/View;)V

    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public final removeViews(II)V
    .registers 7

    .line 1
    add-int v0, p1, p2

    .line 3
    move v1, p1

    .line 4
    :goto_3
    if-ge v1, v0, :cond_14

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    const-string v3, "view"

    .line 12
    invoke-static {v2, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentContainerView;->a(Landroid/view/View;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_3

    .line 21
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 24
    return-void
.end method

.method public final removeViewsInLayout(II)V
    .registers 7

    .line 1
    add-int v0, p1, p2

    .line 3
    move v1, p1

    .line 4
    :goto_3
    if-ge v1, v0, :cond_14

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    const-string v3, "view"

    .line 12
    invoke-static {v2, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentContainerView;->a(Landroid/view/View;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_3

    .line 21
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 24
    return-void
.end method

.method public final setDrawDisappearingViewsLast(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentContainerView;->d:Z

    .line 3
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 3
    .param p1  # Landroid/animation/LayoutTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\"."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .registers 3
    .param p1  # Landroid/view/View$OnApplyWindowInsetsListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/FragmentContainerView;->c:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 8
    return-void
.end method

.method public final startViewTransition(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object v0

    .line 10
    if-ne v0, p0, :cond_10

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->b:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 20
    return-void
.end method
