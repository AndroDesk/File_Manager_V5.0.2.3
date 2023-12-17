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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;

    iget-object v0, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;

    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    iget-object v3, v0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_30

    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;

    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_30
    :goto_30
    return-void
.end method
