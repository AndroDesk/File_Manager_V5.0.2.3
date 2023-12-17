.class Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "PadDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeakRefShowListener"
.end annotation


# instance fields
.field public mShowDismiss:Ljava/lang/ref/WeakReference;
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
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 15
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

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
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 27
    if-eqz p1, :cond_20

    .line 29
    invoke-interface {p1}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    const-string p1, "PhoneDialogAnim"

    .line 35
    const-string v0, "weak show onCancel mOnDismiss get null"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_27
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 12
    if-eqz p1, :cond_11

    .line 14
    invoke-interface {p1}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    const-string p1, "PhoneDialogAnim"

    .line 20
    const-string v0, "weak show onComplete mOnDismiss get null"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_18
    return-void
.end method
