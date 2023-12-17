.class public final Landroidx/appcompat/widget/a1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/a;

.field public final synthetic b:Landroidx/appcompat/widget/b1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b1;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/a1;->b:Landroidx/appcompat/widget/b1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroidx/appcompat/view/menu/a;

    .line 8
    iget-object v1, p1, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    iget-object p1, p1, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    .line 16
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 19
    iput-object v0, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/view/menu/a;

    .line 21
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/a1;->b:Landroidx/appcompat/widget/b1;

    .line 3
    iget-object v0, p1, Landroidx/appcompat/widget/b1;->m:Landroid/view/Window$Callback;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-boolean p1, p1, Landroidx/appcompat/widget/b1;->n:Z

    .line 9
    if-eqz p1, :cond_10

    .line 11
    const/4 p1, 0x0

    .line 12
    iget-object v1, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/view/menu/a;

    .line 14
    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 17
    :cond_10
    return-void
.end method
