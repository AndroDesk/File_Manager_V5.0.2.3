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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V
    .registers 2

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    iget-boolean p2, p1, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    if-eqz p2, :cond_31

    sub-int/2addr p3, p5

    invoke-static {p1, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$020(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$100(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I

    move-result p1

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    invoke-static {p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$200(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I

    move-result p2

    if-lt p1, p2, :cond_31

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$000(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I

    move-result p1

    if-ltz p1, :cond_31

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$000(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I

    move-result p2

    invoke-static {p1, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$300(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I

    move-result p2

    iput p2, p1, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedScrollingLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->access$400(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V

    :cond_31
    return-void
.end method

.method public onStateChanged(IIZ)V
    .registers 4

    return-void
.end method
