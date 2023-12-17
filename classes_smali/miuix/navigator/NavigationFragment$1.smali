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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigationFragment;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavigationFragment$1;->this$0:Lmiuix/navigator/NavigationFragment;

    invoke-direct {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeFinished(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_10

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_10
    return-void
.end method

.method public onChangeStarting(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_10

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_13

    :cond_10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :goto_13
    return-void
.end method
