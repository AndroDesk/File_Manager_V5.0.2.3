.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 3
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 3
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    .line 5
    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 10
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 3
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    .line 5
    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 7
    return-void
.end method
