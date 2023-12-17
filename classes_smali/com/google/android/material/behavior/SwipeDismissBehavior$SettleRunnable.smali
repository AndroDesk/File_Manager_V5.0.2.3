.class Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final dismiss:Z

.field public final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 8
    iput-boolean p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->dismiss:Z

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lr0/c;

    .line 5
    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {v0}, Lr0/c;->h()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 15
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->dismiss:Z

    .line 23
    if-eqz v0, :cond_23

    .line 25
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 27
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 29
    if-eqz v0, :cond_23

    .line 31
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 33
    invoke-interface {v0, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 36
    :cond_23
    :goto_23
    return-void
.end method
