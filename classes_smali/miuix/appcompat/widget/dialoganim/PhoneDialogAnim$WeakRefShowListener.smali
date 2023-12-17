.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeakRefShowListener"
.end annotation


# instance fields
.field public mEndTranslateY:I

.field public mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

.field public mOnShow:Ljava/lang/ref/WeakReference;
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

.field public final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 13
    iput-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 15
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 17
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 22
    iput p5, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    .line 24
    return-void
.end method

.method private done()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_17

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 17
    if-eqz v2, :cond_17

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 22
    iput-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 32
    if-eqz v0, :cond_24

    .line 34
    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 37
    :cond_24
    invoke-static {}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$300()Ljava/lang/ref/WeakReference;

    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_34

    .line 43
    invoke-static {}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$300()Ljava/lang/ref/WeakReference;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 50
    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 53
    :cond_34
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->done()V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 15
    if-eqz p1, :cond_16

    .line 17
    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {p1, v0, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 23
    :cond_16
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 28
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 33
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->done()V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 15
    if-eqz p1, :cond_54

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    const/16 v1, 0x1e

    .line 21
    if-lt v0, v1, :cond_54

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_54

    .line 29
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 36
    move-result v1

    .line 37
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 44
    move-result-object v2

    .line 45
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 48
    move-result v3

    .line 49
    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 52
    move-result-object v0

    .line 53
    if-eqz v1, :cond_41

    .line 55
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 57
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 59
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 61
    sub-int/2addr v2, v0

    .line 62
    invoke-static {v1, v2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    .line 65
    goto :goto_47

    .line 66
    :cond_41
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-static {v0, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    .line 72
    :goto_47
    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    .line 74
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 76
    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    .line 79
    move-result v1

    .line 80
    sub-int/2addr v0, v1

    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-static {p1, v0, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 85
    :cond_54
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 87
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 90
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 9
    if-eqz p1, :cond_16

    .line 11
    const-string p2, "show"

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 18
    if-eqz p2, :cond_16

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 23
    :cond_16
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 31
    if-eqz p1, :cond_23

    .line 33
    invoke-interface {p1}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    .line 36
    :cond_23
    return-void
.end method
