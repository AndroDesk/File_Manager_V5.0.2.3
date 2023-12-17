.class Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field public final synthetic val$l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->val$l:Landroid/view/View$OnClickListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1c

    .line 10
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 12
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_21

    .line 18
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 20
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    .line 23
    move-result v2

    .line 24
    xor-int/2addr v1, v2

    .line 25
    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1300(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 31
    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 34
    :cond_21
    :goto_21
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->val$l:Landroid/view/View$OnClickListener;

    .line 36
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 39
    const-string v0, "2.0"

    .line 41
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3a

    .line 47
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 49
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1400(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/util/HapticFeedbackCompat;

    .line 52
    move-result-object p1

    .line 53
    const/16 v0, 0xcc

    .line 55
    invoke-virtual {p1, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    .line 58
    goto :goto_3f

    .line 59
    :cond_3a
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 61
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 64
    :goto_3f
    return-void
.end method
