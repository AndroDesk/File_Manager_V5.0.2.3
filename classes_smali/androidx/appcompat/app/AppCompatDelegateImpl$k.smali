.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$k;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final synthetic i:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lm/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->i:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->i:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->H(Landroid/view/KeyEvent;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_11

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 19
    :goto_12
    return p1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_37

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    move-result v1

    .line 16
    float-to-int v1, v1

    .line 17
    const/4 v2, -0x5

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-lt v0, v2, :cond_2a

    .line 22
    if-lt v1, v2, :cond_2a

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    move-result v2

    .line 28
    add-int/lit8 v2, v2, 0x5

    .line 30
    if-gt v0, v2, :cond_2a

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v0

    .line 36
    add-int/lit8 v0, v0, 0x5

    .line 38
    if-le v1, v0, :cond_28

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    move v0, v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    :goto_2a
    move v0, v4

    .line 44
    :goto_2b
    if-eqz v0, :cond_37

    .line 46
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->i:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 48
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 55
    return v4

    .line 56
    :cond_37
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method public final setBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method
