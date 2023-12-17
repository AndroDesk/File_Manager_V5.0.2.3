.class Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x1020019

    .line 8
    if-ne p1, v0, :cond_10

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 12
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_16

    .line 17
    :cond_10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 19
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 22
    move-result-object p1

    .line 23
    :goto_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 25
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_35

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 33
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lmiuix/appcompat/internal/view/EditActionModeImpl;

    .line 43
    if-eqz v0, :cond_35

    .line 45
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionModeImpl;->getMenu()Landroid/view/Menu;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 51
    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 54
    :cond_35
    return-void
.end method
