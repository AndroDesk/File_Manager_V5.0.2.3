.class Lmiuix/springback/trigger/CustomTrigger$1;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 26

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v4, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v4}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateView()Landroid/view/View;

    move-result-object v4

    iget-object v5, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v5}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_30
    if-eqz v4, :cond_35

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_35
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v1, v3, v2, v6, v3}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getTarget()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_69

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getTarget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringBackLayout;->getTarget()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    goto :goto_6b

    :cond_69
    move v1, v3

    move v2, v1

    :goto_6b
    if-eqz v5, :cond_8b

    iget-object v6, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v6, v6, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v8, v8, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v5, v3, v6, v7, v2}, Landroid/view/View;->layout(IIII)V

    :cond_8b
    if-eqz v4, :cond_99

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v2, v5, v1}, Landroid/view/View;->layout(IIII)V

    :cond_99
    iget-object v6, v0, Lmiuix/springback/trigger/CustomTrigger$1;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-virtual/range {v6 .. v15}, Lmiuix/springback/trigger/CustomTrigger;->onSpringBackLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method
