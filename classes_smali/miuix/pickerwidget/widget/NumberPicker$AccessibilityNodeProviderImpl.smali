.class Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I

.field private static final VIRTUAL_VIEW_ID_INPUT:I


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x7ff6d26a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->UNDEFINED:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->VIRTUAL_VIEW_ID_DECREMENT:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->VIRTUAL_VIEW_ID_INCREMENT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->VIRTUAL_VIEW_ID_INPUT:I

    return-void
.end method

.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2b
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_3d
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_67

    move p1, v2

    goto :goto_68

    :cond_67
    move p1, p2

    :goto_68
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_86

    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_86
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, p2, :cond_8f

    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_8f
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_cd

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_ad

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_b2

    :cond_ad
    const/16 p1, 0x1000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_b2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_c8

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_cd

    :cond_c8
    const/16 p1, 0x2000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_cd
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_47

    move p3, p2

    goto :goto_48

    :cond_47
    move p3, p4

    :goto_48
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p5, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_68

    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_68
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_71

    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_71
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7e

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7e
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_19

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_19
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_22

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_22
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_33

    move p1, p2

    goto :goto_34

    :cond_33
    move p1, p3

    :goto_34
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p4, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p3, p1, p3

    aget p1, p1, p2

    invoke-virtual {v1, p3, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_76

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    goto :goto_75

    :cond_a
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void

    :cond_2a
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_50
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_75

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_75
    :goto_75
    return-void

    :cond_76
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_95

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_95
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2300(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2400(Lmiuix/pickerwidget/widget/NumberPicker;I)I

    move-result v0

    :cond_16
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_3d

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2600(Lmiuix/pickerwidget/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_2d
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2300(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2400(Lmiuix/pickerwidget/widget/NumberPicker;I)I

    move-result v0

    :cond_16
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_3d

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2600(Lmiuix/pickerwidget/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_2d
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasVirtualDecrementButton()Z
    .registers 3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .registers 3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1, p1, p2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_48
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v0, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_35
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_cd

    const/4 v0, 0x1

    if-eq p1, v0, :cond_84

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 v1, 0x3

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, v0, p1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    add-int v6, v0, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_4b
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-direct {p0, p1, v1, v2, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_84
    const/4 v1, 0x1

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, v0, p1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v6, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, v0, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_cd
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-direct {p0, p1, v0, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_29

    if-eq p2, v5, :cond_25

    if-eq p2, v4, :cond_25

    if-eq p2, v3, :cond_25

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_25
    invoke-direct {p0, v0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_29
    invoke-direct {p0, v0, v3, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v5, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 13

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_14b

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_f2

    const/4 v8, 0x2

    if-eq p1, v8, :cond_6c

    const/4 v8, 0x3

    if-eq p1, v8, :cond_1c

    goto/16 :goto_157

    :cond_1c
    if-eq p2, v7, :cond_57

    if-eq p2, v3, :cond_3d

    if-eq p2, v2, :cond_23

    return v5

    :cond_23
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_3c

    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/view/View;->invalidate(IIII)V

    return v4

    :cond_3c
    return v5

    :cond_3d
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_56

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/view/View;->invalidate(IIII)V

    return v4

    :cond_56
    return v5

    :cond_57
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6b

    if-ne p1, v4, :cond_62

    move v5, v4

    :cond_62
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_6b
    return v5

    :cond_6c
    if-eq p2, v4, :cond_d2

    if-eq p2, v8, :cond_b3

    if-eq p2, v7, :cond_a9

    if-eq p2, v3, :cond_95

    if-eq p2, v2, :cond_81

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_81
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_94

    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v4

    :cond_94
    return v5

    :cond_95
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_a8

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v4

    :cond_a8
    return v5

    :cond_a9
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b2

    return v4

    :cond_b2
    return v5

    :cond_b3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_d1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_d1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return v4

    :cond_d1
    return v5

    :cond_d2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_f1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_f1
    return v5

    :cond_f2
    if-eq p2, v7, :cond_139

    if-eq p2, v3, :cond_119

    if-eq p2, v2, :cond_f9

    return v5

    :cond_f9
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_118

    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/view/View;->invalidate(IIII)V

    return v4

    :cond_118
    return v5

    :cond_119
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_138

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/view/View;->invalidate(IIII)V

    return v4

    :cond_138
    return v5

    :cond_139
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14a

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_14a
    return v5

    :cond_14b
    if-eq p2, v3, :cond_1ae

    if-eq p2, v2, :cond_1a6

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_181

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_15c

    :goto_157
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_15c
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_180

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_17a

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_180

    :cond_17a
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    return v4

    :cond_180
    return v5

    :cond_181
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1a5

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_19f

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_1a5

    :cond_19f
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    return v4

    :cond_1a5
    return v5

    :cond_1a6
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1ad

    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_1ad
    return v5

    :cond_1ae
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1b5

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_1b5
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    goto :goto_29

    :cond_a
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_29

    :cond_18
    invoke-direct {p0, p2}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_29

    :cond_1c
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_29
    :goto_29
    return-void
.end method
