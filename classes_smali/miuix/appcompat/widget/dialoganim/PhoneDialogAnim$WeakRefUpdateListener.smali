.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeakRefUpdateListener"
.end annotation


# instance fields
.field public mIsLandscape:Z

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
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    .line 13
    iput-boolean p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mIsLandscape:Z

    .line 15
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "hide"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1b

    .line 24
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    return-void

    .line 28
    :cond_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    const/16 v2, 0x1e

    .line 32
    const/4 v3, 0x0

    .line 33
    if-lt v1, v2, :cond_52

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_52

    .line 41
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 48
    move-result v2

    .line 49
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 52
    move-result v4

    .line 53
    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 56
    move-result-object v4

    .line 57
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 60
    move-result v5

    .line 61
    invoke-virtual {v1, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 64
    move-result-object v1

    .line 65
    if-eqz v2, :cond_4d

    .line 67
    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 69
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    .line 71
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 73
    sub-int/2addr v4, v1

    .line 74
    invoke-static {v2, v4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    .line 77
    goto :goto_52

    .line 78
    :cond_4d
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 80
    invoke-static {v1, v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    .line 83
    :cond_52
    :goto_52
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/Integer;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result p1

    .line 93
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 95
    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    .line 98
    move-result v1

    .line 99
    sub-int/2addr p1, v1

    .line 100
    invoke-static {v0, p1, v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 103
    return-void
.end method
