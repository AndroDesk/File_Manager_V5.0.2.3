.class public final Landroidx/appcompat/widget/c1;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/c1$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_a

    .line 7
    invoke-static {p0, p1}, Landroidx/appcompat/widget/c1$a;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 10
    goto :goto_37

    .line 11
    :cond_a
    sget-object v0, Landroidx/appcompat/widget/e1;->k:Landroidx/appcompat/widget/e1;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_16

    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 18
    if-ne v0, p0, :cond_16

    .line 20
    invoke-static {v1}, Landroidx/appcompat/widget/e1;->b(Landroidx/appcompat/widget/e1;)V

    .line 23
    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_32

    .line 29
    sget-object p1, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    .line 31
    if-eqz p1, :cond_27

    .line 33
    iget-object v0, p1, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 35
    if-ne v0, p0, :cond_27

    .line 37
    invoke-virtual {p1}, Landroidx/appcompat/widget/e1;->a()V

    .line 40
    :cond_27
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 50
    goto :goto_37

    .line 51
    :cond_32
    new-instance v0, Landroidx/appcompat/widget/e1;

    .line 53
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/e1;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 56
    :goto_37
    return-void
.end method
