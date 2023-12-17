.class Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final layout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_30

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;

    .line 7
    iget-object v0, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 9
    if-eqz v0, :cond_30

    .line 11
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_27

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    .line 23
    iget-object v3, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 25
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    .line 34
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 36
    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 39
    goto :goto_30

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 44
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 49
    :cond_30
    :goto_30
    return-void
.end method
