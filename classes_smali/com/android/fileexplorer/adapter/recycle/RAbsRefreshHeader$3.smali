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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;->val$destHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "RAbsRefreshHeader"

    const-string v0, "RXmasHeader onAnimationEnd: smoothScrollTo"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;->val$destHeight:I

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    :cond_14
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
