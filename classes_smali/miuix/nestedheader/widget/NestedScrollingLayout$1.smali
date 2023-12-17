.class Lmiuix/nestedheader/widget/NestedScrollingLayout$1;
.super Ljava/lang/Object;
.source "NestedScrollingLayout.java"

# interfaces
.implements Lmiuix/core/view/ViewCompatOnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/NestedScrollingLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;


# direct methods
.method public constructor <init>(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    .line 3
    iget-boolean p2, p1, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    .line 5
    if-eqz p2, :cond_31

    .line 7
    sub-int/2addr p3, p5

    .line 8
    invoke-static {p1, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$020(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I

    .line 11
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    .line 13
    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$100(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I

    .line 16
    move-result p1

    .line 17
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    .line 19
    invoke-static {p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$200(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I

    .line 22
    move-result p2

    .line 23
    if-lt p1, p2, :cond_31

    .line 25
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    .line 27
    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$000(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I

    .line 30
    move-result p1

    .line 31
    if-ltz p1, :cond_31

    .line 33
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    .line 35
    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$000(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I

    .line 38
    move-result p2

    .line 39
    invoke-static {p1, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$300(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I

    .line 42
    move-result p2

    .line 43
    iput p2, p1, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    .line 45
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    .line 47
    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$400(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V

    .line 50
    :cond_31
    return-void
.end method

.method public onStateChanged(IIZ)V
    .registers 4

    return-void
.end method
