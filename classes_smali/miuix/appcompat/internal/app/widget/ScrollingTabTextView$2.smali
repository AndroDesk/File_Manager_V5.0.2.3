.class Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollingTabTextView.java"


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
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->access$002(Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;I)I

    .line 10
    return-void
.end method
