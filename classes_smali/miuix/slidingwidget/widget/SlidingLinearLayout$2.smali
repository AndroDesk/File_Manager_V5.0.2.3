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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;I)V
    .registers 3

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iput p2, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2f

    :try_start_a
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_2f

    :catch_12
    move-exception p1

    const-string v0, "error in removeViewSlidingAt, index "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SlidingLinear"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-void
.end method
