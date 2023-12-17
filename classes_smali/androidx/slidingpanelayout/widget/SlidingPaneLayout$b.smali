.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;
.super Lm0/a;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->a:Landroid/graphics/Rect;

    .line 13
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const-string p1, "androidx.slidingpanelayout.widget.SlidingPaneLayout"

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 6

    .line 1
    iget-object v0, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ln0/c;

    .line 9
    invoke-direct {v1, v0}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 12
    invoke-super {p0, p1, v1}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 15
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->a:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 20
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 25
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    .line 28
    move-result v1

    .line 29
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 31
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 34
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 40
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p2, v1}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p2, v1}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 60
    move-result v1

    .line 61
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 63
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 66
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 69
    move-result v1

    .line 70
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 72
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 75
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 78
    move-result v1

    .line 79
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 81
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 84
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 87
    move-result v1

    .line 88
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 90
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 93
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    .line 96
    move-result v1

    .line 97
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 99
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 102
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    .line 105
    move-result v1

    .line 106
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 108
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 111
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    .line 114
    move-result v1

    .line 115
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 117
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 120
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {p2, v1}, Ln0/c;->a(I)V

    .line 127
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    .line 130
    move-result v0

    .line 131
    iget-object v1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 133
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 136
    const-string v0, "androidx.slidingpanelayout.widget.SlidingPaneLayout"

    .line 138
    invoke-virtual {p2, v0}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v0, -0x1

    .line 142
    iput v0, p2, Ln0/c;->c:I

    .line 144
    iget-object v1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 146
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 149
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 151
    invoke-static {p1}, Lm0/g0$d;->f(Landroid/view/View;)Landroid/view/ViewParent;

    .line 154
    move-result-object p1

    .line 155
    instance-of v1, p1, Landroid/view/View;

    .line 157
    if-eqz v1, :cond_a7

    .line 159
    check-cast p1, Landroid/view/View;

    .line 161
    iput v0, p2, Ln0/c;->b:I

    .line 163
    iget-object v0, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 165
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 168
    :cond_a7
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 173
    move-result p1

    .line 174
    const/4 v0, 0x0

    .line 175
    :goto_ae
    if-ge v0, p1, :cond_d0

    .line 177
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 179
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 182
    move-result-object v1

    .line 183
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 185
    invoke-virtual {v2, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;)Z

    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_cd

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_cd

    .line 197
    const/4 v2, 0x1

    .line 198
    invoke-static {v1, v2}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 201
    iget-object v2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 203
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 206
    :cond_cd
    add-int/lit8 v0, v0, 0x1

    .line 208
    goto :goto_ae

    .line 209
    :cond_d0
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 3
    invoke-virtual {v0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    invoke-super {p0, p1, p2, p3}, Lm0/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return p1
.end method
