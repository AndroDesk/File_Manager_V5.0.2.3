.class Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "SlidingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingLinearLayout;->removeViewsSliding(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

.field public final synthetic val$count:I

.field public final synthetic val$end:I

.field public final synthetic val$start:I

.field public final synthetic val$transientCount:I


# direct methods
.method public constructor <init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;IIII)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    .line 3
    iput p2, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$transientCount:I

    .line 5
    iput p3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$end:I

    .line 7
    iput p4, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$start:I

    .line 9
    iput p5, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$count:I

    .line 11
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$transientCount:I

    .line 3
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$end:I

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    if-ne p1, v0, :cond_46

    .line 9
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$start:I

    .line 11
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$count:I

    .line 13
    add-int/2addr p1, v0

    .line 14
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v0

    .line 20
    if-gt p1, v0, :cond_46

    .line 22
    :try_start_15
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    .line 24
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$start:I

    .line 26
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$count:I

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_46

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    const-string v0, "error in removeViewsSliding,start "

    .line 35
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v0

    .line 39
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$start:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " count "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$count:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    const-string v0, "SlidingLinear"

    .line 68
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_46
    :goto_46
    return-void
.end method
