.class Lmiuix/internal/widget/ListPopup$2;
.super Ljava/lang/Object;
.source "ListPopup.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private lastContentHeight:I

.field public final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    .line 9
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 3
    iget-object p1, p1, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result p1

    .line 9
    iget p2, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    .line 11
    const/4 p3, -0x1

    .line 12
    if-eq p2, p3, :cond_f

    .line 14
    if-eq p2, p1, :cond_36

    .line 16
    :cond_f
    const/4 p2, 0x1

    .line 17
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 19
    invoke-static {p3}, Lmiuix/internal/widget/ListPopup;->access$500(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;

    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    move-result-object p3

    .line 27
    if-eqz p3, :cond_22

    .line 29
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 31
    invoke-virtual {p2}, Lmiuix/internal/widget/ListPopup;->isNeedScroll()Z

    .line 34
    move-result p2

    .line 35
    :cond_22
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 37
    iget-object p3, p3, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 39
    check-cast p3, Lmiuix/springback/view/SpringBackLayout;

    .line 41
    invoke-virtual {p3, p2}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    .line 44
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 46
    invoke-static {p3}, Lmiuix/internal/widget/ListPopup;->access$500(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;

    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p3, p2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 53
    iput p1, p0, Lmiuix/internal/widget/ListPopup$2;->lastContentHeight:I

    .line 55
    :cond_36
    return-void
.end method
