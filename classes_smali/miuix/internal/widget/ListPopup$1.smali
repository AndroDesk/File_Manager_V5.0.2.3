.class Lmiuix/internal/widget/ListPopup$1;
.super Landroid/database/DataSetObserver;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lmiuix/internal/widget/ListPopup$1;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup$1;->lambda$onChanged$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onChanged$0(Landroid/view/View;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 9
    invoke-virtual {v1}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    .line 12
    move-result v6

    .line 13
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 15
    invoke-static {v1}, Lmiuix/internal/widget/ListPopup;->access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 18
    move-result-object v1

    .line 19
    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 21
    if-lez v0, :cond_22

    .line 23
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 25
    invoke-static {v2}, Lmiuix/internal/widget/ListPopup;->access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 28
    move-result-object v2

    .line 29
    iget v2, v2, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 31
    if-le v2, v0, :cond_22

    .line 33
    move v7, v0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v7, v1

    .line 36
    :goto_23
    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [I

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 42
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 44
    invoke-static {v0, p1}, Lmiuix/internal/widget/ListPopup;->access$200(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)I

    .line 47
    move-result v4

    .line 48
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 50
    invoke-static {v0, p1}, Lmiuix/internal/widget/ListPopup;->access$300(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)I

    .line 53
    move-result v5

    .line 54
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 56
    move-object v3, p1

    .line 57
    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 60
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 3
    invoke-static {v0}, Lmiuix/internal/widget/ListPopup;->access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 10
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 12
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_21

    .line 18
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 20
    invoke-static {v0}, Lmiuix/internal/widget/ListPopup;->access$100(Lmiuix/internal/widget/ListPopup;)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_21

    .line 26
    new-instance v1, Lmiuix/internal/widget/a;

    .line 28
    invoke-direct {v1, p0, v0}, Lmiuix/internal/widget/a;-><init>(Lmiuix/internal/widget/ListPopup$1;Landroid/view/View;)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    :cond_21
    return-void
.end method
