.class Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PadDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeakRefShowOnAndroidUIListener"
.end annotation


# instance fields
.field public mOnDismiss:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field public mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 15
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/View;

    .line 12
    if-eqz p1, :cond_11

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    :cond_11
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 26
    if-eqz p1, :cond_1e

    .line 28
    invoke-interface {p1}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 31
    :cond_1e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/View;

    .line 12
    if-eqz p1, :cond_12

    .line 14
    const-string v0, "show"

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    :cond_12
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 27
    if-eqz p1, :cond_1f

    .line 29
    invoke-interface {p1}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    .line 32
    :cond_1f
    return-void
.end method
