.class Lcom/google/android/material/bottomappbar/BottomAppBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public cancelled:Z

.field public final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field public final synthetic val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic val$targetAttached:Z

.field public final synthetic val$targetMode:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    iput p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetMode:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetAttached:Z

    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->cancelled:Z

    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->cancelled:Z

    .line 3
    if-nez p1, :cond_f

    .line 5
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 9
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetMode:I

    .line 11
    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetAttached:Z

    .line 13
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1800(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    .line 16
    :cond_f
    return-void
.end method
