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
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 13
    const/4 p1, 0x2

    .line 14
    new-array p1, p1, [I

    .line 16
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 18
    const/high16 p1, -0x80000000

    .line 20
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 22
    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 32
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2b

    .line 38
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 40
    const/4 v2, 0x3

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 44
    :cond_2b
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 50
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v1, :cond_3d

    .line 57
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 62
    :cond_3d
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/view/View;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 85
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 87
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 93
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 98
    move-result p1

    .line 99
    const/4 p2, 0x0

    .line 100
    if-nez p1, :cond_67

    .line 102
    move p1, v2

    .line 103
    goto :goto_68

    .line 104
    :cond_67
    move p1, p2

    .line 105
    :goto_68
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 108
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 110
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 112
    invoke-virtual {p3, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 115
    aget p2, p1, p2

    .line 117
    aget p1, p1, v2

    .line 119
    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 125
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 127
    const/4 p2, -0x1

    .line 128
    if-eq p1, p2, :cond_86

    .line 130
    const/16 p1, 0x40

    .line 132
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 135
    :cond_86
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 137
    if-ne p1, p2, :cond_8f

    .line 139
    const/16 p1, 0x80

    .line 141
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 144
    :cond_8f
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_cd

    .line 152
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 154
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_ad

    .line 160
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 162
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 165
    move-result p1

    .line 166
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 168
    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 171
    move-result p2

    .line 172
    if-ge p1, p2, :cond_b2

    .line 174
    :cond_ad
    const/16 p1, 0x1000

    .line 176
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 179
    :cond_b2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 181
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_c8

    .line 187
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 189
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 192
    move-result p1

    .line 193
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 195
    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 198
    move-result p2

    .line 199
    if-le p1, p2, :cond_cd

    .line 201
    :cond_c8
    const/16 p1, 0x2000

    .line 203
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 206
    :cond_cd
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/widget/Button;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 32
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 37
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 44
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 47
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 56
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 63
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 66
    move-result p3

    .line 67
    const/4 p4, 0x0

    .line 68
    if-nez p3, :cond_47

    .line 70
    move p3, p2

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move p3, p4

    .line 73
    :goto_48
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 79
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 81
    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 83
    invoke-virtual {p5, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 86
    aget p4, p3, p4

    .line 88
    aget p2, p3, p2

    .line 90
    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 96
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 98
    if-eq p2, p1, :cond_68

    .line 100
    const/16 p2, 0x40

    .line 102
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 105
    :cond_68
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 107
    if-ne p2, p1, :cond_71

    .line 109
    const/16 p1, 0x80

    .line 111
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 114
    :cond_71
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_7e

    .line 122
    const/16 p1, 0x10

    .line 124
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 127
    :cond_7e
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 17
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 19
    if-eq v1, v2, :cond_19

    .line 21
    const/16 v1, 0x40

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26
    :cond_19
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 28
    if-ne v1, v2, :cond_22

    .line 30
    const/16 v1, 0x80

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 35
    :cond_22
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 45
    move-result p1

    .line 46
    const/4 p2, 0x1

    .line 47
    const/4 p3, 0x0

    .line 48
    if-nez p1, :cond_33

    .line 50
    move p1, p2

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move p1, p3

    .line 53
    :goto_34
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 59
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 61
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 63
    invoke-virtual {p4, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 66
    aget p3, p1, p3

    .line 68
    aget p1, p1, p2

    .line 70
    invoke-virtual {v1, p3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 76
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

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_76

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_2a

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_a

    .line 10
    goto :goto_75

    .line 11
    :cond_a
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_29

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_29

    .line 35
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_29
    return-void

    .line 43
    :cond_2a
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 45
    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_50

    .line 59
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_50

    .line 73
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void

    .line 81
    :cond_50
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 83
    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 90
    move-result-object p2

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_75

    .line 97
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_75

    .line 111
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_75
    :goto_75
    return-void

    .line 119
    :cond_76
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_95

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_95

    .line 143
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 146
    move-result-object p1

    .line 147
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_95
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2300(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 17
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 19
    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2400(Lmiuix/pickerwidget/widget/NumberPicker;I)I

    .line 22
    move-result v0

    .line 23
    :cond_16
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 25
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 28
    move-result v1

    .line 29
    if-lt v0, v1, :cond_3d

    .line 31
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 33
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_2d

    .line 39
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 41
    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2600(Lmiuix/pickerwidget/widget/NumberPicker;I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    goto :goto_3c

    .line 46
    :cond_2d
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 48
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 54
    invoke-static {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 57
    move-result v2

    .line 58
    sub-int/2addr v0, v2

    .line 59
    aget-object v0, v1, v0

    .line 61
    :goto_3c
    return-object v0

    .line 62
    :cond_3d
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2300(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 17
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 19
    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2400(Lmiuix/pickerwidget/widget/NumberPicker;I)I

    .line 22
    move-result v0

    .line 23
    :cond_16
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 25
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 28
    move-result v1

    .line 29
    if-gt v0, v1, :cond_3d

    .line 31
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 33
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_2d

    .line 39
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 41
    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2600(Lmiuix/pickerwidget/widget/NumberPicker;I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    goto :goto_3c

    .line 46
    :cond_2d
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 48
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 54
    invoke-static {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 57
    move-result v2

    .line 58
    sub-int/2addr v0, v2

    .line 59
    aget-object v0, v1, v0

    .line 61
    :goto_3c
    return-object v0

    .line 62
    :cond_3d
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method

.method private hasVirtualDecrementButton()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_19

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 17
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 20
    move-result v1

    .line 21
    if-le v0, v1, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 27
    :goto_1a
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_19

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 17
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 27
    :goto_1a
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accessibility"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 15
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_48

    .line 21
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 24
    move-result-object p2

    .line 25
    const-class v0, Landroid/widget/Button;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 56
    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    .line 59
    move-result p3

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 63
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 65
    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 68
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 70
    invoke-virtual {p1, p1, p2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 73
    :cond_48
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accessibility"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 15
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_35

    .line 21
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 27
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 34
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 36
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 43
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 49
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 51
    invoke-virtual {v0, v0, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 54
    :cond_35
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_cd

    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p1, v0, :cond_84

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_4b

    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_11

    .line 13
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    const/4 v1, 0x3

    .line 19
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 28
    move-result v3

    .line 29
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 34
    move-result v4

    .line 35
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 46
    move-result v0

    .line 47
    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 49
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 52
    move-result v5

    .line 53
    sub-int/2addr v0, v5

    .line 54
    add-int v5, v0, p1

    .line 56
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 58
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 61
    move-result p1

    .line 62
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 64
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 67
    move-result v0

    .line 68
    add-int v6, v0, p1

    .line 70
    move-object v0, p0

    .line 71
    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_4b
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 81
    move-result p1

    .line 82
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 84
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 87
    move-result v0

    .line 88
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 90
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 93
    move-result v1

    .line 94
    add-int/2addr v1, v0

    .line 95
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 100
    move-result v0

    .line 101
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 106
    move-result v2

    .line 107
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 112
    move-result v3

    .line 113
    sub-int/2addr v2, v3

    .line 114
    add-int/2addr v2, v0

    .line 115
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 117
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 120
    move-result v0

    .line 121
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 123
    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 126
    move-result v3

    .line 127
    sub-int/2addr v0, v3

    .line 128
    invoke-direct {p0, p1, v1, v2, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :cond_84
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 143
    move-result v3

    .line 144
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 146
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 149
    move-result p1

    .line 150
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 152
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 155
    move-result v0

    .line 156
    sub-int v4, p1, v0

    .line 158
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 163
    move-result p1

    .line 164
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 169
    move-result v0

    .line 170
    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 172
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 175
    move-result v5

    .line 176
    sub-int/2addr v0, v5

    .line 177
    add-int v5, v0, p1

    .line 179
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 184
    move-result p1

    .line 185
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 190
    move-result v0

    .line 191
    iget-object v6, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 193
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 196
    move-result v6

    .line 197
    sub-int/2addr v0, v6

    .line 198
    add-int v6, v0, p1

    .line 200
    move-object v0, p0

    .line 201
    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 204
    move-result-object p1

    .line 205
    return-object p1

    .line 206
    :cond_cd
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 211
    move-result p1

    .line 212
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 217
    move-result v0

    .line 218
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 223
    move-result v1

    .line 224
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 226
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 229
    move-result v2

    .line 230
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 232
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 235
    move-result v3

    .line 236
    sub-int/2addr v2, v3

    .line 237
    add-int/2addr v2, v1

    .line 238
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 240
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 243
    move-result v1

    .line 244
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 249
    move-result v3

    .line 250
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 252
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 255
    move-result v4

    .line 256
    sub-int/2addr v3, v4

    .line 257
    add-int/2addr v3, v1

    .line 258
    invoke-direct {p0, p1, v0, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 261
    move-result-object p1

    .line 262
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

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x3

    .line 23
    const/4 v4, 0x2

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq p2, v2, :cond_29

    .line 27
    if-eq p2, v5, :cond_25

    .line 29
    if-eq p2, v4, :cond_25

    .line 31
    if-eq p2, v3, :cond_25

    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_25
    invoke-direct {p0, v0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 41
    return-object v1

    .line 42
    :cond_29
    invoke-direct {p0, v0, v3, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 45
    invoke-direct {p0, v0, v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 48
    invoke-direct {p0, v0, v5, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 51
    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    const/16 v2, 0x80

    .line 6
    const/16 v3, 0x40

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eq p1, v0, :cond_14b

    .line 12
    const/high16 v0, 0x10000

    .line 14
    const v6, 0x8000

    .line 17
    const/16 v7, 0x10

    .line 19
    if-eq p1, v4, :cond_f2

    .line 21
    const/4 v8, 0x2

    .line 22
    if-eq p1, v8, :cond_6c

    .line 24
    const/4 v8, 0x3

    .line 25
    if-eq p1, v8, :cond_1c

    .line 27
    goto/16 :goto_157

    .line 29
    :cond_1c
    if-eq p2, v7, :cond_57

    .line 31
    if-eq p2, v3, :cond_3d

    .line 33
    if-eq p2, v2, :cond_23

    .line 35
    return v5

    .line 36
    :cond_23
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 38
    if-ne p2, p1, :cond_3c

    .line 40
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 42
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 45
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 50
    move-result p2

    .line 51
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 53
    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 56
    move-result p3

    .line 57
    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/view/View;->invalidate(IIII)V

    .line 60
    return v4

    .line 61
    :cond_3c
    return v5

    .line 62
    :cond_3d
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 64
    if-eq p2, p1, :cond_56

    .line 66
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 68
    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 71
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 76
    move-result p2

    .line 77
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 79
    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 82
    move-result p3

    .line 83
    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/view/View;->invalidate(IIII)V

    .line 86
    return v4

    .line 87
    :cond_56
    return v5

    .line 88
    :cond_57
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_6b

    .line 96
    if-ne p1, v4, :cond_62

    .line 98
    move v5, v4

    .line 99
    :cond_62
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 101
    invoke-static {p2, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    .line 104
    invoke-virtual {p0, p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 107
    return v4

    .line 108
    :cond_6b
    return v5

    .line 109
    :cond_6c
    if-eq p2, v4, :cond_d2

    .line 111
    if-eq p2, v8, :cond_b3

    .line 113
    if-eq p2, v7, :cond_a9

    .line 115
    if-eq p2, v3, :cond_95

    .line 117
    if-eq p2, v2, :cond_81

    .line 119
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 121
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 128
    move-result p1

    .line 129
    return p1

    .line 130
    :cond_81
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 132
    if-ne p2, p1, :cond_94

    .line 134
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 136
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 139
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 141
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 148
    return v4

    .line 149
    :cond_94
    return v5

    .line 150
    :cond_95
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 152
    if-eq p2, p1, :cond_a8

    .line 154
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 156
    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 159
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 161
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 168
    return v4

    .line 169
    :cond_a8
    return v5

    .line 170
    :cond_a9
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_b2

    .line 178
    return v4

    .line 179
    :cond_b2
    return v5

    .line 180
    :cond_b3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_d1

    .line 188
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 190
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_d1

    .line 200
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 202
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 209
    return v4

    .line 210
    :cond_d1
    return v5

    .line 211
    :cond_d2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_f1

    .line 219
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 221
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_f1

    .line 231
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 233
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 240
    move-result p1

    .line 241
    return p1

    .line 242
    :cond_f1
    return v5

    .line 243
    :cond_f2
    if-eq p2, v7, :cond_139

    .line 245
    if-eq p2, v3, :cond_119

    .line 247
    if-eq p2, v2, :cond_f9

    .line 249
    return v5

    .line 250
    :cond_f9
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 252
    if-ne p2, p1, :cond_118

    .line 254
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 256
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 259
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 261
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 264
    move-result p2

    .line 265
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 267
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 270
    move-result p3

    .line 271
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 276
    move-result v0

    .line 277
    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/view/View;->invalidate(IIII)V

    .line 280
    return v4

    .line 281
    :cond_118
    return v5

    .line 282
    :cond_119
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 284
    if-eq p2, p1, :cond_138

    .line 286
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 288
    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 291
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 293
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 296
    move-result p2

    .line 297
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 299
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 302
    move-result p3

    .line 303
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 308
    move-result v0

    .line 309
    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/view/View;->invalidate(IIII)V

    .line 312
    return v4

    .line 313
    :cond_138
    return v5

    .line 314
    :cond_139
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 316
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    .line 319
    move-result p2

    .line 320
    if-eqz p2, :cond_14a

    .line 322
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 324
    invoke-static {p2, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    .line 327
    invoke-virtual {p0, p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 330
    return v4

    .line 331
    :cond_14a
    return v5

    .line 332
    :cond_14b
    if-eq p2, v3, :cond_1ae

    .line 334
    if-eq p2, v2, :cond_1a6

    .line 336
    const/16 v0, 0x1000

    .line 338
    if-eq p2, v0, :cond_181

    .line 340
    const/16 v0, 0x2000

    .line 342
    if-eq p2, v0, :cond_15c

    .line 344
    :goto_157
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 347
    move-result p1

    .line 348
    return p1

    .line 349
    :cond_15c
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 354
    move-result p1

    .line 355
    if-eqz p1, :cond_180

    .line 357
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 359
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 362
    move-result p1

    .line 363
    if-nez p1, :cond_17a

    .line 365
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 367
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 370
    move-result p1

    .line 371
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 373
    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    .line 376
    move-result p2

    .line 377
    if-le p1, p2, :cond_180

    .line 379
    :cond_17a
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 381
    invoke-static {p1, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    .line 384
    return v4

    .line 385
    :cond_180
    return v5

    .line 386
    :cond_181
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 388
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 391
    move-result p1

    .line 392
    if-eqz p1, :cond_1a5

    .line 394
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 396
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 399
    move-result p1

    .line 400
    if-nez p1, :cond_19f

    .line 402
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 404
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 407
    move-result p1

    .line 408
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 410
    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    .line 413
    move-result p2

    .line 414
    if-ge p1, p2, :cond_1a5

    .line 416
    :cond_19f
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 418
    invoke-static {p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    .line 421
    return v4

    .line 422
    :cond_1a5
    return v5

    .line 423
    :cond_1a6
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 425
    if-ne p2, p1, :cond_1ad

    .line 427
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 429
    return v4

    .line 430
    :cond_1ad
    return v5

    .line 431
    :cond_1ae
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 433
    if-eq p2, p1, :cond_1b5

    .line 435
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 437
    return v4

    .line 438
    :cond_1b5
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1c

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_18

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_a

    .line 10
    goto :goto_29

    .line 11
    :cond_a
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_29

    .line 17
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 24
    goto :goto_29

    .line 25
    :cond_18
    invoke-direct {p0, p2}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    .line 28
    goto :goto_29

    .line 29
    :cond_1c
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_29

    .line 35
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 42
    :cond_29
    :goto_29
    return-void
.end method
