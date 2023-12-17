.class Lmiuix/navigator/NavigationFragment$1;
.super Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;
.source "NavigationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavigationFragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavigationFragment;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigationFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigationFragment$1;->this$0:Lmiuix/navigator/NavigationFragment;

    .line 3
    invoke-direct {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChangeFinished(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 4

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    if-eqz p2, :cond_10

    .line 12
    const/4 p2, 0x1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 17
    :cond_10
    return-void
.end method

.method public onChangeStarting(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 3

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    if-eqz p2, :cond_10

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 20
    :goto_13
    return-void
.end method
