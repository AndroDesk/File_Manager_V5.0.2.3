.class Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$2;
.super Ljava/lang/Object;
.source "RAbsRefreshHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setVisibleHeight(I)V

    return-void
.end method