.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;
.super Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;
.source "PhoneDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field public final synthetic val$dimBgOriginalBottomMargin:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 3
    iput p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    invoke-super/range {p0 .. p9}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_2e

    .line 10
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 13
    move-result p3

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 21
    move-result p4

    .line 22
    invoke-virtual {p2, p4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 25
    move-result-object p4

    .line 26
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 29
    move-result p5

    .line 30
    invoke-virtual {p2, p5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 33
    move-result-object p2

    .line 34
    if-eqz p3, :cond_2f

    .line 36
    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 38
    iget p5, p4, Landroid/graphics/Insets;->bottom:I

    .line 40
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 42
    sub-int/2addr p5, p2

    .line 43
    invoke-static {p3, p5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 p4, 0x0

    .line 48
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->isInMultiScreenMode(Landroid/content/Context;)Z

    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_4b

    .line 58
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->isInMultiScreenBottom(Landroid/content/Context;)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4b

    .line 64
    iget p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    .line 66
    if-eqz p4, :cond_46

    .line 68
    iget p2, p4, Landroid/graphics/Insets;->bottom:I

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    const/4 p2, 0x0

    .line 72
    :goto_47
    add-int/2addr p1, p2

    .line 73
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->updateDimBgMargin(I)V

    .line 76
    :cond_4b
    return-void
.end method
