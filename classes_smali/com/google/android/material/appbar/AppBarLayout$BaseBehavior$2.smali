.class Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Ln0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addAccessibilityScrollActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

.field public final synthetic val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final synthetic val$dy:I

.field public final synthetic val$scrollingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    iput-object p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$scrollingView:Landroid/view/View;

    .line 9
    iput p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$dy:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Ln0/g$a;)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$scrollingView:Landroid/view/View;

    .line 9
    iget v5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$dy:I

    .line 11
    const/4 p1, 0x2

    .line 12
    new-array v6, p1, [I

    .line 14
    fill-array-data v6, :array_18

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v7, 0x1

    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    nop

    .line 25
    :array_18
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
