.class Lmiuix/nestedheader/widget/NestedHeaderLayout$1;
.super Ljava/lang/Object;
.source "NestedHeaderLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method public constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    sub-int/2addr p5, p3

    .line 2
    sub-int/2addr p9, p7

    .line 3
    sub-int/2addr p5, p9

    .line 4
    if-eqz p5, :cond_25

    .line 6
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 8
    iget-boolean p2, p1, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 10
    if-eqz p2, :cond_25

    .line 12
    const/4 p2, 0x1

    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-static {p1, p2, p3, p3, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;ZZZZ)V

    .line 17
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 19
    invoke-virtual {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 22
    move-result p2

    .line 23
    add-int/2addr p2, p5

    .line 24
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 26
    invoke-static {p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$100(Lmiuix/nestedheader/widget/NestedHeaderLayout;)I

    .line 29
    move-result p3

    .line 30
    neg-int p3, p3

    .line 31
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p2

    .line 35
    invoke-virtual {p1, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingProgressImmediately(I)V

    .line 38
    :cond_25
    return-void
.end method
