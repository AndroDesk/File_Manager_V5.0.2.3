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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c1$a;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_37

    :cond_a
    sget-object v0, Landroidx/appcompat/widget/e1;->k:Landroidx/appcompat/widget/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    if-ne v0, p0, :cond_16

    invoke-static {v1}, Landroidx/appcompat/widget/e1;->b(Landroidx/appcompat/widget/e1;)V

    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object p1, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    if-eqz p1, :cond_27

    iget-object v0, p1, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    if-ne v0, p0, :cond_27

    invoke-virtual {p1}, Landroidx/appcompat/widget/e1;->a()V

    :cond_27
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_37

    :cond_32
    new-instance v0, Landroidx/appcompat/widget/e1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/e1;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_37
    return-void
.end method
