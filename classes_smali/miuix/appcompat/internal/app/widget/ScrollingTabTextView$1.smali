.class Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$1;
.super Ljava/lang/Object;
.source "ScrollingTabTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->startScrollAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->access$002(Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;I)I

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 21
    return-void
.end method
