.class Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Ln0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Ln0/c$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;

.field public final synthetic val$appBarLayout:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

.field public final synthetic val$expand:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;->val$appBarLayout:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;->val$expand:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Ln0/g$a;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;->val$appBarLayout:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$3;->val$expand:Z

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setExpanded(Z)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method
