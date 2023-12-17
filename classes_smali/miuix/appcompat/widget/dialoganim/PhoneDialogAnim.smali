.class public Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;,
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;,
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;,
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;
    }
.end annotation


# static fields
.field private static final DAMPING:F = 0.88f

.field private static final DISMISS_DURATION:I = 0xc8

.field private static final DURATION:I = 0x15e

.field private static final MARGIN:I = 0xf

.field private static final RESPONSE:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "PhoneDialogAnim"

.field private static final TAG_HIDE:Ljava/lang/String; = "hide"

.field private static final TAG_SHOW:Ljava/lang/String; = "show"

.field private static sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImeHeight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 7
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 3
    return p1
.end method

.method public static synthetic access$100(Landroid/view/View;IZ)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->relayoutView(Landroid/view/View;IZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .registers 6

    .line 1
    invoke-static/range {p0 .. p5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->doExecuteShowAnim(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object v0
.end method

.method public static synthetic access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    sput-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method private dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;)V
    .registers 8

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [F

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    aput v3, v2, v4

    .line 29
    int-to-float v1, v1

    .line 30
    const/4 v3, 0x1

    .line 31
    aput v1, v2, v3

    .line 33
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 36
    move-result-object v0

    .line 37
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    .line 39
    aput-object v0, v1, v4

    .line 41
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 47
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 49
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    const-wide/16 v0, 0xc8

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 63
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 66
    return-void
.end method

.method private static doExecuteShowAnim(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .registers 7

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p3, p0, [I

    .line 4
    const/4 v0, 0x0

    .line 5
    aput p1, p3, v0

    .line 7
    const/4 p1, 0x1

    .line 8
    aput p2, p3, p1

    .line 10
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 13
    move-result-object p1

    .line 14
    const-wide/16 p2, 0x15e

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    new-array p0, p0, [F

    .line 21
    fill-array-data p0, :array_30

    .line 24
    invoke-static {v0, p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 40
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 45
    sput-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_30
    .array-data 4
        0x3f6147ae  # 0.88f
        0x3f333333  # 0.7f
    .end array-data
.end method

.method private static relayoutView(Landroid/view/View;IZ)V
    .registers 5

    .line 1
    if-eqz p2, :cond_1c

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 13
    move-result-object p0

    .line 14
    const-wide/16 v0, 0x64

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 19
    move-result-object p0

    .line 20
    int-to-float p1, p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 28
    goto :goto_27

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 36
    int-to-float p1, p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    :goto_27
    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .registers 2

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_f
    return-void
.end method

.method public executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "hide"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;

    .line 16
    invoke-direct {v0, p0, p1, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    .line 19
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;)V

    .line 22
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->dismiss(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 14

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "show"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 28
    move-result v1

    .line 29
    const/high16 v2, 0x3f800000  # 1.0f

    .line 31
    cmpl-float v1, v1, v2

    .line 33
    if-eqz v1, :cond_28

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 41
    :cond_28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    const/16 v3, 0x1e

    .line 45
    if-lt v1, v3, :cond_34

    .line 47
    new-instance v1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;

    .line 49
    invoke-direct {v1, p0, p1, p2, v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;I)V

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 v1, 0x0

    .line 54
    :goto_35
    move-object v8, v1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_51

    .line 61
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;

    .line 63
    move-object v3, v0

    .line 64
    move-object v4, p0

    .line 65
    move-object v5, p1

    .line 66
    move v6, p3

    .line 67
    move-object v7, p4

    .line 68
    invoke-direct/range {v3 .. v8}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    const/4 p3, 0x4

    .line 75
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 81
    goto :goto_59

    .line 82
    :cond_51
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;

    .line 84
    invoke-direct {v0, p0, p3, p4, v8}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 90
    :goto_59
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    .line 93
    return-void
.end method
