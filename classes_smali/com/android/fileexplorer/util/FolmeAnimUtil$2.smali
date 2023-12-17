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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/listener/TransitionListener;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$l:Lmiuix/animation/listener/TransitionListener;

    iput-object p2, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$notifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$l:Lmiuix/animation/listener/TransitionListener;

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$notifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$l:Lmiuix/animation/listener/TransitionListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;->val$l:Lmiuix/animation/listener/TransitionListener;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method
