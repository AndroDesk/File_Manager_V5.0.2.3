.class Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "SlidingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingLinearLayout;->removeViewSlidingAt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    .line 3
    iput p2, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    .line 5
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    .line 3
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_2f

    .line 11
    :try_start_a
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    .line 13
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    .line 18
    goto :goto_2f

    .line 19
    :catch_12
    move-exception p1

    .line 20
    const-string v0, "error in removeViewSlidingAt, index "

    .line 22
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, " "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string v0, "SlidingLinear"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method
