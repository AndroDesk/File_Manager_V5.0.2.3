.class Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RAbsRefreshHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

.field public final synthetic val$destHeight:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;->val$destHeight:I

    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    const-string p1, "RAbsRefreshHeader"

    .line 6
    const-string v0, "RXmasHeader onAnimationEnd: smoothScrollTo"

    .line 8
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;->val$destHeight:I

    .line 13
    if-nez p1, :cond_14

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    .line 21
    :cond_14
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 4
    return-void
.end method
