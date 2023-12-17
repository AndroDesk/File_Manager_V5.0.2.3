.class Lmiuix/miuixbasewidget/widget/FilterSortView$1;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFilteredChanged(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 3
    invoke-virtual {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->checkBackgroundTabViewAdded()V

    .line 6
    if-eqz p2, :cond_69

    .line 8
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 10
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_69

    .line 20
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 22
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$400(Lmiuix/miuixbasewidget/widget/FilterSortView;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_69

    .line 28
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 30
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$500(Lmiuix/miuixbasewidget/widget/FilterSortView;)Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_69

    .line 36
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 38
    const-string v1, "target"

    .line 40
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 43
    sget-object v1, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 48
    move-result v2

    .line 49
    float-to-double v2, v2

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 59
    move-result v2

    .line 60
    int-to-double v2, v2

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x1

    .line 66
    new-array v2, v1, [Landroid/view/View;

    .line 68
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 70
    invoke-static {v3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 73
    move-result-object v3

    .line 74
    const/4 v4, 0x0

    .line 75
    aput-object v3, v2, v4

    .line 77
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 84
    move-result-object v2

    .line 85
    const-wide/16 v5, 0x1

    .line 87
    invoke-interface {v2, v5, v6}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 90
    move-result-object v2

    .line 91
    new-array v3, v4, [Lmiuix/animation/base/AnimConfig;

    .line 93
    invoke-interface {v2, v0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 96
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 98
    invoke-static {v0, v4}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$402(Lmiuix/miuixbasewidget/widget/FilterSortView;Z)Z

    .line 101
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 103
    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$502(Lmiuix/miuixbasewidget/widget/FilterSortView;Z)Z

    .line 106
    :cond_69
    if-eqz p2, :cond_74

    .line 108
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 113
    move-result p1

    .line 114
    invoke-static {p2, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$602(Lmiuix/miuixbasewidget/widget/FilterSortView;I)I

    .line 117
    :cond_74
    return-void
.end method
