.class public final Landroidx/appcompat/widget/q0;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/appcompat/widget/r0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/r0;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/q0;->b:Landroidx/appcompat/widget/r0;

    iput-object p2, p0, Landroidx/appcompat/widget/q0;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/q0;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/q0;->b:Landroidx/appcompat/widget/r0;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/q0;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/q0;->b:Landroidx/appcompat/widget/r0;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Landroidx/appcompat/widget/q0;->b:Landroidx/appcompat/widget/r0;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    return-void
.end method
