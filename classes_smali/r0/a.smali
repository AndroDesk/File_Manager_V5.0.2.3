.class public abstract Lr0/a;
.super Lm0/a;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/a$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Lr0/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b$a<",
            "Ln0/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Lr0/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b$b<",
            "Landroidx/collection/g<",
            "Ln0/c;",
            ">;",
            "Ln0/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field public mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lr0/a$c;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    const v1, 0x7fffffff

    .line 6
    const/high16 v2, -0x80000000

    .line 8
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    sput-object v0, Lr0/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Lr0/a$a;

    .line 15
    invoke-direct {v0}, Lr0/a$a;-><init>()V

    .line 18
    sput-object v0, Lr0/a;->NODE_ADAPTER:Lr0/b$a;

    .line 20
    new-instance v0, Lr0/a$b;

    .line 22
    invoke-direct {v0}, Lr0/a$b;-><init>()V

    .line 25
    sput-object v0, Lr0/a;->SPARSE_VALUES_ADAPTER:Lr0/b$b;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iput-object v0, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iput-object v0, p0, Lr0/a;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 28
    iput-object v0, p0, Lr0/a;->mTempGlobalRect:[I

    .line 30
    const/high16 v0, -0x80000000

    .line 32
    iput v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    .line 34
    iput v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 36
    iput v0, p0, Lr0/a;->mHoveredVirtualViewId:I

    .line 38
    if-eqz p1, :cond_47

    .line 40
    iput-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    const-string v1, "accessibility"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 54
    iput-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 60
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 62
    invoke-static {p1}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_46

    .line 68
    invoke-static {p1, v0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 71
    :cond_46
    return-void

    .line 72
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    const-string v0, "View may not be null"

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    .line 3
    if-ne v0, p1, :cond_14

    .line 5
    const/high16 v0, -0x80000000

    .line 7
    iput v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    .line 9
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 14
    const/high16 v0, 0x10000

    .line 16
    invoke-virtual {p0, p1, v0}, Lr0/a;->sendEventForVirtualView(II)Z

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    .line 1
    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    if-eq v0, v1, :cond_11

    .line 7
    const/16 v1, 0x10

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lr0/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_8

    .line 4
    invoke-direct {p0, p1, p2}, Lr0/a;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-direct {p0, p2}, Lr0/a;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    .line 1
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1}, Lr0/a;->obtainAccessibilityNodeInfo(I)Ln0/c;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ln0/c;->f()Ljava/lang/CharSequence;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 31
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 34
    move-result v1

    .line 35
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 38
    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 40
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 47
    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 49
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 52
    move-result v1

    .line 53
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 56
    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 58
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 61
    move-result v1

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 65
    invoke-virtual {p0, p1, p2}, Lr0/a;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 68
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5c

    .line 78
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_54

    .line 84
    goto :goto_5c

    .line 85
    :cond_54
    new-instance p1, Ljava/lang/RuntimeException;

    .line 87
    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 89
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p1

    .line 93
    :cond_5c
    :goto_5c
    iget-object v0, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 95
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 104
    invoke-static {p2, v0, p1}, Ln0/f;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 107
    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 120
    return-object p2
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10
    return-object p1
.end method

.method private createNodeForChild(I)Ln0/c;
    .registers 10

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ln0/c;

    .line 7
    invoke-direct {v1, v0}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 17
    const-string v3, "android.view.View"

    .line 19
    invoke-virtual {v1, v3}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 22
    sget-object v3, Lr0/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {v1, v3}, Ln0/c;->h(Landroid/graphics/Rect;)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 30
    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 32
    const/4 v5, -0x1

    .line 33
    iput v5, v1, Ln0/c;->b:I

    .line 35
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0, p1, v1}, Lr0/a;->onPopulateNodeForVirtualView(ILn0/c;)V

    .line 41
    invoke-virtual {v1}, Ln0/c;->f()Ljava/lang/CharSequence;

    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_3d

    .line 47
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_35

    .line 53
    goto :goto_3d

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/RuntimeException;

    .line 56
    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    :cond_3d
    :goto_3d
    iget-object v4, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    .line 64
    invoke-virtual {v1, v4}, Ln0/c;->e(Landroid/graphics/Rect;)V

    .line 67
    iget-object v4, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_156

    .line 75
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 78
    move-result v4

    .line 79
    and-int/lit8 v6, v4, 0x40

    .line 81
    if-nez v6, :cond_14e

    .line 83
    const/16 v6, 0x80

    .line 85
    and-int/2addr v4, v6

    .line 86
    if-nez v4, :cond_146

    .line 88
    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 103
    iput p1, v1, Ln0/c;->c:I

    .line 105
    invoke-virtual {v0, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 108
    iget v4, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    .line 110
    const/4 v7, 0x0

    .line 111
    if-ne v4, p1, :cond_77

    .line 113
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 116
    invoke-virtual {v1, v6}, Ln0/c;->a(I)V

    .line 119
    goto :goto_7f

    .line 120
    :cond_77
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 123
    const/16 v4, 0x40

    .line 125
    invoke-virtual {v1, v4}, Ln0/c;->a(I)V

    .line 128
    :goto_7f
    iget v4, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 130
    if-ne v4, p1, :cond_85

    .line 132
    move p1, v2

    .line 133
    goto :goto_86

    .line 134
    :cond_85
    move p1, v7

    .line 135
    :goto_86
    if-eqz p1, :cond_8d

    .line 137
    const/4 v4, 0x2

    .line 138
    invoke-virtual {v1, v4}, Ln0/c;->a(I)V

    .line 141
    goto :goto_96

    .line 142
    :cond_8d
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_96

    .line 148
    invoke-virtual {v1, v2}, Ln0/c;->a(I)V

    .line 151
    :cond_96
    :goto_96
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 154
    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 156
    iget-object v4, p0, Lr0/a;->mTempGlobalRect:[I

    .line 158
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 161
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 163
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 166
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 168
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_102

    .line 174
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 176
    invoke-virtual {v1, p1}, Ln0/c;->e(Landroid/graphics/Rect;)V

    .line 179
    iget p1, v1, Ln0/c;->b:I

    .line 181
    if-eq p1, v5, :cond_e7

    .line 183
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 186
    move-result-object p1

    .line 187
    new-instance v0, Ln0/c;

    .line 189
    invoke-direct {v0, p1}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 192
    iget p1, v1, Ln0/c;->b:I

    .line 194
    :goto_c1
    if-eq p1, v5, :cond_e7

    .line 196
    iget-object v3, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 198
    iput v5, v0, Ln0/c;->b:I

    .line 200
    iget-object v4, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 202
    invoke-virtual {v4, v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 205
    sget-object v3, Lr0/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 207
    invoke-virtual {v0, v3}, Ln0/c;->h(Landroid/graphics/Rect;)V

    .line 210
    invoke-virtual {p0, p1, v0}, Lr0/a;->onPopulateNodeForVirtualView(ILn0/c;)V

    .line 213
    iget-object p1, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    .line 215
    invoke-virtual {v0, p1}, Ln0/c;->e(Landroid/graphics/Rect;)V

    .line 218
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 220
    iget-object v3, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    .line 222
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 224
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 226
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 229
    iget p1, v0, Ln0/c;->b:I

    .line 231
    goto :goto_c1

    .line 232
    :cond_e7
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 234
    iget-object v0, p0, Lr0/a;->mTempGlobalRect:[I

    .line 236
    aget v0, v0, v7

    .line 238
    iget-object v3, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 240
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 243
    move-result v3

    .line 244
    sub-int/2addr v0, v3

    .line 245
    iget-object v3, p0, Lr0/a;->mTempGlobalRect:[I

    .line 247
    aget v3, v3, v2

    .line 249
    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 251
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 254
    move-result v4

    .line 255
    sub-int/2addr v3, v4

    .line 256
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 259
    :cond_102
    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lr0/a;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 266
    move-result p1

    .line 267
    if-eqz p1, :cond_145

    .line 269
    iget-object p1, p0, Lr0/a;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 271
    iget-object v0, p0, Lr0/a;->mTempGlobalRect:[I

    .line 273
    aget v0, v0, v7

    .line 275
    iget-object v3, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 277
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 280
    move-result v3

    .line 281
    sub-int/2addr v0, v3

    .line 282
    iget-object v3, p0, Lr0/a;->mTempGlobalRect:[I

    .line 284
    aget v3, v3, v2

    .line 286
    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 288
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 291
    move-result v4

    .line 292
    sub-int/2addr v3, v4

    .line 293
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 296
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 298
    iget-object v0, p0, Lr0/a;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 300
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_145

    .line 306
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 308
    iget-object v0, v1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 310
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 313
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 315
    invoke-direct {p0, p1}, Lr0/a;->isVisibleToUser(Landroid/graphics/Rect;)Z

    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_145

    .line 321
    iget-object p1, v1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 323
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 326
    :cond_145
    return-object v1

    .line 327
    :cond_146
    new-instance p1, Ljava/lang/RuntimeException;

    .line 329
    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 331
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 334
    throw p1

    .line 335
    :cond_14e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 337
    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 339
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 342
    throw p1

    .line 343
    :cond_156
    new-instance p1, Ljava/lang/RuntimeException;

    .line 345
    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    .line 347
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 350
    throw p1
.end method

.method private createNodeForHost()Ln0/c;
    .registers 8

    .line 1
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ln0/c;

    .line 9
    invoke-direct {v1, v0}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 12
    iget-object v2, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 14
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 16
    invoke-virtual {v2, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {p0, v2}, Lr0/a;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 27
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_2f

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v0

    .line 37
    if-gtz v0, :cond_27

    .line 39
    goto :goto_2f

    .line 40
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    const-string v1, "Views cannot have both real and virtual children"

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v3

    .line 53
    :goto_34
    if-ge v0, v3, :cond_4a

    .line 55
    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 57
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Ljava/lang/Integer;

    .line 63
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v5

    .line 67
    iget-object v6, v1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 69
    invoke-virtual {v6, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_34

    .line 75
    :cond_4a
    return-object v1
.end method

.method private getAllNodes()Landroidx/collection/g;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/g<",
            "Ln0/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lr0/a;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 9
    new-instance v1, Landroidx/collection/g;

    .line 11
    invoke-direct {v1}, Landroidx/collection/g;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_32

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v3

    .line 31
    invoke-direct {p0, v3}, Lr0/a;->createNodeForChild(I)Ln0/c;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v4

    .line 45
    invoke-virtual {v1, v4, v3}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_e

    .line 51
    :cond_32
    return-object v1
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lr0/a;->obtainAccessibilityNodeInfo(I)Ln0/c;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Ln0/c;->e(Landroid/graphics/Rect;)V

    .line 8
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result p0

    .line 9
    const/16 v1, 0x11

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq p1, v1, :cond_2e

    .line 14
    const/16 v1, 0x21

    .line 16
    if-eq p1, v1, :cond_2a

    .line 18
    const/16 v1, 0x42

    .line 20
    const/4 v3, -0x1

    .line 21
    if-eq p1, v1, :cond_26

    .line 23
    const/16 p0, 0x82

    .line 25
    if-ne p1, p0, :cond_1e

    .line 27
    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    goto :goto_31

    .line 31
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0

    .line 39
    :cond_26
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 42
    goto :goto_31

    .line 43
    :cond_2a
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    :goto_31
    return-object p2
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_38

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_a

    .line 10
    goto :goto_38

    .line 11
    :cond_a
    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    return v0

    .line 20
    :cond_13
    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object p1

    .line 26
    :goto_19
    instance-of v1, p1, Landroid/view/View;

    .line 28
    if-eqz v1, :cond_35

    .line 30
    check-cast p1, Landroid/view/View;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    cmpg-float v1, v1, v2

    .line 39
    if-lez v1, :cond_34

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2f

    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 51
    move-result-object p1

    .line 52
    goto :goto_19

    .line 53
    :cond_34
    :goto_34
    return v0

    .line 54
    :cond_35
    if-eqz p1, :cond_38

    .line 56
    const/4 v0, 0x1

    .line 57
    :cond_38
    :goto_38
    return v0
.end method

.method private static keyToDirection(I)I
    .registers 2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_15

    const/16 v0, 0x15

    if-eq p0, v0, :cond_12

    const/16 v0, 0x16

    if-eq p0, v0, :cond_f

    const/16 p0, 0x82

    return p0

    :cond_f
    const/16 p0, 0x42

    return p0

    :cond_12
    const/16 p0, 0x11

    return p0

    :cond_15
    const/16 p0, 0x21

    return p0
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-direct/range {p0 .. p0}, Lr0/a;->getAllNodes()Landroidx/collection/g;

    .line 10
    move-result-object v3

    .line 11
    iget v4, v0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 13
    const/high16 v5, -0x80000000

    .line 15
    const/4 v6, 0x0

    .line 16
    if-ne v4, v5, :cond_13

    .line 18
    move-object v4, v6

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    invoke-virtual {v3, v4, v6}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ln0/c;

    .line 26
    :goto_19
    const/4 v7, 0x2

    .line 27
    const/4 v8, -0x1

    .line 28
    const/4 v9, 0x1

    .line 29
    const/4 v10, 0x0

    .line 30
    if-eq v1, v9, :cond_fc

    .line 32
    if-eq v1, v7, :cond_fc

    .line 34
    const/16 v7, 0x82

    .line 36
    const/16 v11, 0x42

    .line 38
    const/16 v12, 0x21

    .line 40
    const/16 v13, 0x11

    .line 42
    if-eq v1, v13, :cond_3a

    .line 44
    if-eq v1, v12, :cond_3a

    .line 46
    if-eq v1, v11, :cond_3a

    .line 48
    if-ne v1, v7, :cond_32

    .line 50
    goto :goto_3a

    .line 51
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 55
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v1

    .line 59
    :cond_3a
    :goto_3a
    new-instance v14, Landroid/graphics/Rect;

    .line 61
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 64
    iget v15, v0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 66
    if-eq v15, v5, :cond_47

    .line 68
    invoke-direct {v0, v15, v14}, Lr0/a;->getBoundsInParent(ILandroid/graphics/Rect;)V

    .line 71
    goto :goto_52

    .line 72
    :cond_47
    if-eqz v2, :cond_4d

    .line 74
    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    goto :goto_52

    .line 78
    :cond_4d
    iget-object v2, v0, Lr0/a;->mHost:Landroid/view/View;

    .line 80
    invoke-static {v2, v1, v14}, Lr0/a;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 83
    :goto_52
    sget-object v2, Lr0/a;->SPARSE_VALUES_ADAPTER:Lr0/b$b;

    .line 85
    sget-object v15, Lr0/a;->NODE_ADAPTER:Lr0/b$a;

    .line 87
    new-instance v5, Landroid/graphics/Rect;

    .line 89
    invoke-direct {v5, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 92
    if-eq v1, v13, :cond_88

    .line 94
    if-eq v1, v12, :cond_7f

    .line 96
    if-eq v1, v11, :cond_75

    .line 98
    if-ne v1, v7, :cond_6d

    .line 100
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 103
    move-result v7

    .line 104
    add-int/2addr v7, v9

    .line 105
    neg-int v7, v7

    .line 106
    invoke-virtual {v5, v10, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 109
    goto :goto_90

    .line 110
    :cond_6d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 112
    const-string v2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 114
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    throw v1

    .line 118
    :cond_75
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 121
    move-result v7

    .line 122
    add-int/2addr v7, v9

    .line 123
    neg-int v7, v7

    .line 124
    invoke-virtual {v5, v7, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 127
    goto :goto_90

    .line 128
    :cond_7f
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 131
    move-result v7

    .line 132
    add-int/2addr v7, v9

    .line 133
    invoke-virtual {v5, v10, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 136
    goto :goto_90

    .line 137
    :cond_88
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 140
    move-result v7

    .line 141
    add-int/2addr v7, v9

    .line 142
    invoke-virtual {v5, v7, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 145
    :goto_90
    check-cast v2, Lr0/a$b;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    iget v2, v3, Landroidx/collection/g;->c:I

    .line 152
    new-instance v7, Landroid/graphics/Rect;

    .line 154
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 157
    move v11, v10

    .line 158
    :goto_9d
    if-ge v11, v2, :cond_165

    .line 160
    iget-object v12, v3, Landroidx/collection/g;->b:[Ljava/lang/Object;

    .line 162
    aget-object v12, v12, v11

    .line 164
    check-cast v12, Ln0/c;

    .line 166
    if-ne v12, v4, :cond_a8

    .line 168
    goto :goto_f8

    .line 169
    :cond_a8
    move-object v13, v15

    .line 170
    check-cast v13, Lr0/a$a;

    .line 172
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    invoke-virtual {v12, v7}, Ln0/c;->e(Landroid/graphics/Rect;)V

    .line 178
    invoke-static {v1, v14, v7}, Lr0/b;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 181
    move-result v13

    .line 182
    if-nez v13, :cond_b8

    .line 184
    goto :goto_f1

    .line 185
    :cond_b8
    invoke-static {v1, v14, v5}, Lr0/b;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 188
    move-result v13

    .line 189
    if-nez v13, :cond_bf

    .line 191
    goto :goto_ef

    .line 192
    :cond_bf
    invoke-static {v1, v14, v7, v5}, Lr0/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 195
    move-result v13

    .line 196
    if-eqz v13, :cond_c6

    .line 198
    goto :goto_ef

    .line 199
    :cond_c6
    invoke-static {v1, v14, v5, v7}, Lr0/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 202
    move-result v13

    .line 203
    if-eqz v13, :cond_cd

    .line 205
    goto :goto_f1

    .line 206
    :cond_cd
    invoke-static {v1, v14, v7}, Lr0/b;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 209
    move-result v13

    .line 210
    invoke-static {v1, v14, v7}, Lr0/b;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 213
    move-result v16

    .line 214
    mul-int/lit8 v17, v13, 0xd

    .line 216
    mul-int v17, v17, v13

    .line 218
    mul-int v16, v16, v16

    .line 220
    add-int v13, v16, v17

    .line 222
    invoke-static {v1, v14, v5}, Lr0/b;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 225
    move-result v16

    .line 226
    invoke-static {v1, v14, v5}, Lr0/b;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 229
    move-result v17

    .line 230
    mul-int/lit8 v18, v16, 0xd

    .line 232
    mul-int v18, v18, v16

    .line 234
    mul-int v17, v17, v17

    .line 236
    add-int v10, v17, v18

    .line 238
    if-ge v13, v10, :cond_f1

    .line 240
    :goto_ef
    move v10, v9

    .line 241
    goto :goto_f2

    .line 242
    :cond_f1
    :goto_f1
    const/4 v10, 0x0

    .line 243
    :goto_f2
    if-eqz v10, :cond_f8

    .line 245
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 248
    move-object v6, v12

    .line 249
    :cond_f8
    :goto_f8
    add-int/lit8 v11, v11, 0x1

    .line 251
    const/4 v10, 0x0

    .line 252
    goto :goto_9d

    .line 253
    :cond_fc
    iget-object v2, v0, Lr0/a;->mHost:Landroid/view/View;

    .line 255
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 257
    invoke-static {v2}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 260
    move-result v2

    .line 261
    if-ne v2, v9, :cond_108

    .line 263
    move v2, v9

    .line 264
    goto :goto_109

    .line 265
    :cond_108
    const/4 v2, 0x0

    .line 266
    :goto_109
    sget-object v5, Lr0/a;->SPARSE_VALUES_ADAPTER:Lr0/b$b;

    .line 268
    sget-object v10, Lr0/a;->NODE_ADAPTER:Lr0/b$a;

    .line 270
    check-cast v5, Lr0/a$b;

    .line 272
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    iget v5, v3, Landroidx/collection/g;->c:I

    .line 277
    new-instance v11, Ljava/util/ArrayList;

    .line 279
    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    const/4 v12, 0x0

    .line 283
    :goto_11a
    if-ge v12, v5, :cond_128

    .line 285
    iget-object v13, v3, Landroidx/collection/g;->b:[Ljava/lang/Object;

    .line 287
    aget-object v13, v13, v12

    .line 289
    check-cast v13, Ln0/c;

    .line 291
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v12, v12, 0x1

    .line 296
    goto :goto_11a

    .line 297
    :cond_128
    new-instance v5, Lr0/b$c;

    .line 299
    invoke-direct {v5, v2, v10}, Lr0/b$c;-><init>(ZLr0/b$a;)V

    .line 302
    invoke-static {v11, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    if-eq v1, v9, :cond_151

    .line 307
    if-ne v1, v7, :cond_149

    .line 309
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 312
    move-result v1

    .line 313
    if-nez v4, :cond_13c

    .line 315
    move v2, v8

    .line 316
    goto :goto_140

    .line 317
    :cond_13c
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 320
    move-result v2

    .line 321
    :goto_140
    add-int/2addr v2, v9

    .line 322
    if-ge v2, v1, :cond_163

    .line 324
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    move-result-object v1

    .line 328
    move-object v6, v1

    .line 329
    goto :goto_163

    .line 330
    :cond_149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 332
    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 334
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 337
    throw v1

    .line 338
    :cond_151
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 341
    move-result v1

    .line 342
    if-nez v4, :cond_158

    .line 344
    goto :goto_15c

    .line 345
    :cond_158
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 348
    move-result v1

    .line 349
    :goto_15c
    add-int/2addr v1, v8

    .line 350
    if-ltz v1, :cond_163

    .line 352
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    move-result-object v6

    .line 356
    :cond_163
    :goto_163
    check-cast v6, Ln0/c;

    .line 358
    :cond_165
    if-nez v6, :cond_16a

    .line 360
    const/high16 v5, -0x80000000

    .line 362
    goto :goto_181

    .line 363
    :cond_16a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    const/4 v10, 0x0

    .line 367
    :goto_16e
    iget v1, v3, Landroidx/collection/g;->c:I

    .line 369
    if-ge v10, v1, :cond_17d

    .line 371
    iget-object v1, v3, Landroidx/collection/g;->b:[Ljava/lang/Object;

    .line 373
    aget-object v1, v1, v10

    .line 375
    if-ne v1, v6, :cond_17a

    .line 377
    move v8, v10

    .line 378
    goto :goto_17d

    .line 379
    :cond_17a
    add-int/lit8 v10, v10, 0x1

    .line 381
    goto :goto_16e

    .line 382
    :cond_17d
    :goto_17d
    iget-object v1, v3, Landroidx/collection/g;->a:[I

    .line 384
    aget v5, v1, v8

    .line 386
    :goto_181
    invoke-virtual {v0, v5}, Lr0/a;->requestKeyboardFocusForVirtualView(I)Z

    .line 389
    move-result v1

    .line 390
    return v1
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_22

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_1d

    .line 7
    const/16 v0, 0x40

    .line 9
    if-eq p2, v0, :cond_18

    .line 11
    const/16 v0, 0x80

    .line 13
    if-eq p2, v0, :cond_13

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lr0/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    invoke-direct {p0, p1}, Lr0/a;->clearAccessibilityFocus(I)Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_18
    invoke-direct {p0, p1}, Lr0/a;->requestAccessibilityFocus(I)Z

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1d
    invoke-virtual {p0, p1}, Lr0/a;->clearKeyboardFocusForVirtualView(I)Z

    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_22
    invoke-virtual {p0, p1}, Lr0/a;->requestKeyboardFocusForVirtualView(I)Z

    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0, p1, p2}, Lm0/g0$d;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2c

    .line 10
    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    goto :goto_2c

    .line 19
    :cond_12
    iget v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    .line 21
    if-eq v0, p1, :cond_2c

    .line 23
    const/high16 v1, -0x80000000

    .line 25
    if-eq v0, v1, :cond_1d

    .line 27
    invoke-direct {p0, v0}, Lr0/a;->clearAccessibilityFocus(I)Z

    .line 30
    :cond_1d
    iput p1, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    .line 32
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 37
    const v0, 0x8000

    .line 40
    invoke-virtual {p0, p1, v0}, Lr0/a;->sendEventForVirtualView(II)Z

    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_2c
    :goto_2c
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4

    .line 1
    iget v0, p0, Lr0/a;->mHoveredVirtualViewId:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lr0/a;->mHoveredVirtualViewId:I

    .line 8
    const/16 v1, 0x80

    .line 10
    invoke-virtual {p0, p1, v1}, Lr0/a;->sendEventForVirtualView(II)Z

    .line 13
    const/16 p1, 0x100

    .line 15
    invoke-virtual {p0, v0, p1}, Lr0/a;->sendEventForVirtualView(II)Z

    .line 18
    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4

    .line 1
    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/high16 v0, -0x80000000

    .line 9
    iput v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 11
    invoke-virtual {p0, p1, v1}, Lr0/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 14
    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0, p1, v0}, Lr0/a;->sendEventForVirtualView(II)Z

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_40

    .line 10
    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    goto :goto_40

    .line 19
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x7

    .line 24
    const/4 v3, 0x1

    .line 25
    const/high16 v4, -0x80000000

    .line 27
    if-eq v0, v2, :cond_2e

    .line 29
    const/16 v2, 0x9

    .line 31
    if-eq v0, v2, :cond_2e

    .line 33
    const/16 p1, 0xa

    .line 35
    if-eq v0, p1, :cond_25

    .line 37
    return v1

    .line 38
    :cond_25
    iget p1, p0, Lr0/a;->mHoveredVirtualViewId:I

    .line 40
    if-eq p1, v4, :cond_2d

    .line 42
    invoke-direct {p0, v4}, Lr0/a;->updateHoveredVirtualView(I)V

    .line 45
    return v3

    .line 46
    :cond_2d
    return v1

    .line 47
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, v0, p1}, Lr0/a;->getVirtualViewAt(FF)I

    .line 58
    move-result p1

    .line 59
    invoke-direct {p0, p1}, Lr0/a;->updateHoveredVirtualView(I)V

    .line 62
    if-eq p1, v4, :cond_40

    .line 64
    move v1, v3

    .line 65
    :cond_40
    :goto_40
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_5e

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 12
    move-result v0

    .line 13
    const/16 v3, 0x3d

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v0, v3, :cond_48

    .line 18
    const/16 v3, 0x42

    .line 20
    if-eq v0, v3, :cond_37

    .line 22
    packed-switch v0, :pswitch_data_60

    .line 25
    goto :goto_5e

    .line 26
    :pswitch_19  #0x13, 0x14, 0x15, 0x16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_5e

    .line 32
    invoke-static {v0}, Lr0/a;->keyToDirection(I)I

    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 39
    move-result p1

    .line 40
    add-int/2addr p1, v2

    .line 41
    move v3, v1

    .line 42
    :goto_29
    if-ge v1, p1, :cond_35

    .line 44
    invoke-direct {p0, v0, v4}, Lr0/a;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_35

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    move v3, v2

    .line 53
    goto :goto_29

    .line 54
    :cond_35
    move v1, v3

    .line 55
    goto :goto_5e

    .line 56
    :cond_37
    :pswitch_37  #0x17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_5e

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_5e

    .line 68
    invoke-direct {p0}, Lr0/a;->clickKeyboardFocusedVirtualView()Z

    .line 71
    move v1, v2

    .line 72
    goto :goto_5e

    .line 73
    :cond_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_54

    .line 79
    const/4 p1, 0x2

    .line 80
    invoke-direct {p0, p1, v4}, Lr0/a;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 83
    move-result v1

    .line 84
    goto :goto_5e

    .line 85
    :cond_54
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5e

    .line 91
    invoke-direct {p0, v2, v4}, Lr0/a;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 94
    move-result v1

    .line 95
    :cond_5e
    :goto_5e
    return v1

    .line 96
    nop

    .line 97
    :pswitch_data_60
    .packed-switch 0x13
        :pswitch_19  #00000013
        :pswitch_19  #00000014
        :pswitch_19  #00000015
        :pswitch_19  #00000016
        :pswitch_37  #00000017
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    .line 3
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;
    .registers 2

    .line 1
    iget-object p1, p0, Lr0/a;->mNodeProvider:Lr0/a$c;

    .line 3
    if-nez p1, :cond_b

    .line 5
    new-instance p1, Lr0/a$c;

    .line 7
    invoke-direct {p1, p0}, Lr0/a$c;-><init>(Lr0/a;)V

    .line 10
    iput-object p1, p0, Lr0/a;->mNodeProvider:Lr0/a$c;

    .line 12
    :cond_b
    iget-object p1, p0, Lr0/a;->mNodeProvider:Lr0/a$c;

    .line 14
    return-object p1
.end method

.method public getFocusedVirtualView()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr0/a;->getAccessibilityFocusedVirtualViewId()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 3
    return v0
.end method

.method public abstract getVirtualViewAt(FF)I
.end method

.method public abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lr0/a;->invalidateVirtualView(II)V

    .line 6
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lr0/a;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 5

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_22

    .line 2
    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0x800

    .line 4
    invoke-direct {p0, p1, v1}, Lr0/a;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Ln0/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 6
    iget-object p2, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_22
    return-void
.end method

.method public obtainAccessibilityNodeInfo(I)Ln0/c;
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_8

    .line 4
    invoke-direct {p0}, Lr0/a;->createNodeForHost()Ln0/c;

    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-direct {p0, p1}, Lr0/a;->createNodeForChild(I)Ln0/c;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    if-eq v0, v1, :cond_9

    .line 7
    invoke-virtual {p0, v0}, Lr0/a;->clearKeyboardFocusForVirtualView(I)Z

    .line 10
    :cond_9
    if-eqz p1, :cond_e

    .line 12
    invoke-direct {p0, p2, p3}, Lr0/a;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 15
    :cond_e
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-virtual {p0, p2}, Lr0/a;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    invoke-virtual {p0, p2}, Lr0/a;->onPopulateNodeForHost(Ln0/c;)V

    .line 7
    return-void
.end method

.method public abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method public onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method public onPopulateNodeForHost(Ln0/c;)V
    .registers 2

    return-void
.end method

.method public abstract onPopulateNodeForVirtualView(ILn0/c;)V
.end method

.method public onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 3

    return-void
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_8

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lr0/a;->performActionForChild(IILandroid/os/Bundle;)Z

    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-direct {p0, p2, p3}, Lr0/a;->performActionForHost(ILandroid/os/Bundle;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_12

    .line 10
    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    return v1

    .line 19
    :cond_12
    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 21
    if-ne v0, p1, :cond_17

    .line 23
    return v1

    .line 24
    :cond_17
    const/high16 v2, -0x80000000

    .line 26
    if-eq v0, v2, :cond_1e

    .line 28
    invoke-virtual {p0, v0}, Lr0/a;->clearKeyboardFocusForVirtualView(I)Z

    .line 31
    :cond_1e
    if-ne p1, v2, :cond_21

    .line 33
    return v1

    .line 34
    :cond_21
    iput p1, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, p1, v0}, Lr0/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 40
    const/16 v1, 0x8

    .line 42
    invoke-virtual {p0, p1, v1}, Lr0/a;->sendEventForVirtualView(II)Z

    .line 45
    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-eq p1, v1, :cond_22

    .line 6
    iget-object v1, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 8
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_e

    .line 14
    goto :goto_22

    .line 15
    :cond_e
    iget-object v1, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_17

    .line 23
    return v0

    .line 24
    :cond_17
    invoke-direct {p0, p1, p2}, Lr0/a;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Lr0/a;->mHost:Landroid/view/View;

    .line 30
    invoke-interface {v1, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_22
    :goto_22
    return v0
.end method
