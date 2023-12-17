.class Lcom/android/fileexplorer/util/FolmeAnimUtil$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolmeAnimUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/FolmeAnimUtil;->animScale(Landroid/view/View;IIIILmiuix/animation/listener/TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$l:Lmiuix/animation/listener/TransitionListener;

.field public final synthetic val$notifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lmiuix/animation/listener/TransitionListener;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$l:Lmiuix/animation/listener/TransitionListener;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$notifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$l:Lmiuix/animation/listener/TransitionListener;

    .line 6
    if-eqz p1, :cond_16

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$notifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_16

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$l:Lmiuix/animation/listener/TransitionListener;

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 23
    :cond_16
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$l:Lmiuix/animation/listener/TransitionListener;

    .line 6
    if-eqz p1, :cond_b

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 12
    :cond_b
    return-void
.end method
