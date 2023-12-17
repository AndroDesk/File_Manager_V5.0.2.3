.class public final Landroidx/appcompat/widget/q0;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/appcompat/widget/r0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/r0;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/q0;->b:Landroidx/appcompat/widget/r0;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/q0;->a:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q0;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/q0;->b:Landroidx/appcompat/widget/r0;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Landroidx/appcompat/widget/q0;->a:Landroid/view/View;

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v2

    .line 19
    sub-int/2addr v1, v2

    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 22
    sub-int/2addr v0, v1

    .line 23
    iget-object v1, p0, Landroidx/appcompat/widget/q0;->b:Landroidx/appcompat/widget/r0;

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 29
    iget-object v0, p0, Landroidx/appcompat/widget/q0;->b:Landroidx/appcompat/widget/r0;

    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 34
    return-void
.end method
