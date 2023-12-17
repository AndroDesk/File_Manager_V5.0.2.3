.class Lcom/google/android/material/behavior/SwipeDismissBehavior$2;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ln0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Ln0/g$a;)Z
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_3a

    .line 10
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 15
    move-result p2

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne p2, v1, :cond_14

    .line 19
    move p2, v1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move p2, v0

    .line 22
    :goto_15
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 24
    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 26
    if-nez v2, :cond_1d

    .line 28
    if-nez p2, :cond_21

    .line 30
    :cond_1d
    if-ne v2, v1, :cond_22

    .line 32
    if-nez p2, :cond_22

    .line 34
    :cond_21
    move v0, v1

    .line 35
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 38
    move-result p2

    .line 39
    if-eqz v0, :cond_29

    .line 41
    neg-int p2, p2

    .line 42
    :cond_29
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 49
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 51
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 53
    if-eqz p2, :cond_39

    .line 55
    invoke-interface {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 58
    :cond_39
    return v1

    .line 59
    :cond_3a
    return v0
.end method
