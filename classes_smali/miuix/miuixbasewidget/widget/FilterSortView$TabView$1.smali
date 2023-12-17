.class Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field public final synthetic val$filtered:Z


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->val$filtered:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$900(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->val$filtered:Z

    .line 11
    if-eqz v0, :cond_19

    .line 13
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 15
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$900(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 21
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->val$filtered:Z

    .line 23
    invoke-interface {v0, v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;->onFilteredChanged(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 26
    :cond_19
    return-void
.end method
