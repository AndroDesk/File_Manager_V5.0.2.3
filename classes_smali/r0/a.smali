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

    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lr0/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    new-instance v0, Lr0/a$a;

    invoke-direct {v0}, Lr0/a$a;-><init>()V

    sput-object v0, Lr0/a;->NODE_ADAPTER:Lr0/b$a;

    new-instance v0, Lr0/a$b;

    invoke-direct {v0}, Lr0/a$b;-><init>()V

    sput-object v0, Lr0/a;->SPARSE_VALUES_ADAPTER:Lr0/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lm0/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lr0/a;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lr0/a;->mTempGlobalRect:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    iput v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    iput v0, p0, Lr0/a;->mHoveredVirtualViewId:I

    if-eqz p1, :cond_47

    iput-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$d;->c(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_46

    invoke-static {p1, v0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    :cond_46
    return-void

    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3

    iget v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_14

    const/high16 v0, -0x80000000

    iput v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lr0/a;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lr0/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-direct {p0, p1, p2}, Lr0/a;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-direct {p0, p2}, Lr0/a;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Lr0/a;->obtainAccessibilityNodeInfo(I)Ln0/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ln0/c;->f()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    iget-object v1, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    invoke-virtual {p0, p1, p2}, Lr0/a;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_54

    goto :goto_5c

    :cond_54
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    :goto_5c
    iget-object v0, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-static {p2, v0, p1}, Ln0/f;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private createNodeForChild(I)Ln0/c;
    .registers 10

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Ln0/c;

    invoke-direct {v1, v0}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    const-string v3, "android.view.View"

    invoke-virtual {v1, v3}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    sget-object v3, Lr0/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ln0/c;->h(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    const/4 v5, -0x1

    iput v5, v1, Ln0/c;->b:I

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {p0, p1, v1}, Lr0/a;->onPopulateNodeForVirtualView(ILn0/c;)V

    invoke-virtual {v1}, Ln0/c;->f()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_3d

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_35

    goto :goto_3d

    :cond_35
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    :goto_3d
    iget-object v4, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Ln0/c;->e(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_156

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v4

    and-int/lit8 v6, v4, 0x40

    if-nez v6, :cond_14e

    const/16 v6, 0x80

    and-int/2addr v4, v6

    if-nez v4, :cond_146

    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    iput p1, v1, Ln0/c;->c:I

    invoke-virtual {v0, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v4, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    const/4 v7, 0x0

    if-ne v4, p1, :cond_77

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {v1, v6}, Ln0/c;->a(I)V

    goto :goto_7f

    :cond_77
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ln0/c;->a(I)V

    :goto_7f
    iget v4, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    if-ne v4, p1, :cond_85

    move p1, v2

    goto :goto_86

    :cond_85
    move p1, v7

    :goto_86
    if-eqz p1, :cond_8d

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ln0/c;->a(I)V

    goto :goto_96

    :cond_8d
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {v1, v2}, Ln0/c;->a(I)V

    :cond_96
    :goto_96
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    iget-object v4, p0, Lr0/a;->mTempGlobalRect:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_102

    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Ln0/c;->e(Landroid/graphics/Rect;)V

    iget p1, v1, Ln0/c;->b:I

    if-eq p1, v5, :cond_e7

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    new-instance v0, Ln0/c;

    invoke-direct {v0, p1}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget p1, v1, Ln0/c;->b:I

    :goto_c1
    if-eq p1, v5, :cond_e7

    iget-object v3, p0, Lr0/a;->mHost:Landroid/view/View;

    iput v5, v0, Ln0/c;->b:I

    iget-object v4, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    sget-object v3, Lr0/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Ln0/c;->h(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Lr0/a;->onPopulateNodeForVirtualView(ILn0/c;)V

    iget-object p1, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ln0/c;->e(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lr0/a;->mTempParentRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    iget p1, v0, Ln0/c;->b:I

    goto :goto_c1

    :cond_e7
    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lr0/a;->mTempGlobalRect:[I

    aget v0, v0, v7

    iget-object v3, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lr0/a;->mTempGlobalRect:[I

    aget v3, v3, v2

    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_102
    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    iget-object v0, p0, Lr0/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_145

    iget-object p1, p0, Lr0/a;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lr0/a;->mTempGlobalRect:[I

    aget v0, v0, v7

    iget-object v3, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lr0/a;->mTempGlobalRect:[I

    aget v3, v3, v2

    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lr0/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_145

    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v0, v1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lr0/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lr0/a;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_145

    iget-object p1, v1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_145
    return-object v1

    :cond_146
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_156
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createNodeForHost()Ln0/c;
    .registers 8

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Ln0/c;

    invoke-direct {v1, v0}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v2, p0, Lr0/a;->mHost:Landroid/view/View;

    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Lr0/a;->getVisibleVirtualViews(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_27

    goto :goto_2f

    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_34
    if-ge v0, v3, :cond_4a

    iget-object v4, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lr0/a;->getVisibleVirtualViews(Ljava/util/List;)V

    new-instance v1, Landroidx/collection/g;

    invoke-direct {v1}, Landroidx/collection/g;-><init>()V

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lr0/a;->createNodeForChild(I)Ln0/c;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_32
    return-object v1
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0, p1}, Lr0/a;->obtainAccessibilityNodeInfo(I)Ln0/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Ln0/c;->e(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2e

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2a

    const/16 v1, 0x42

    const/4 v3, -0x1

    if-eq p1, v1, :cond_26

    const/16 p0, 0x82

    if-ne p1, p0, :cond_1e

    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    :cond_2a
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    :cond_2e
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_31
    return-object p2
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_38

    :cond_a
    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_13

    return v0

    :cond_13
    iget-object p1, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_19
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_35

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_34

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_34

    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_19

    :cond_34
    :goto_34
    return v0

    :cond_35
    if-eqz p1, :cond_38

    const/4 v0, 0x1

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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lr0/a;->getAllNodes()Landroidx/collection/g;

    move-result-object v3

    iget v4, v0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    if-ne v4, v5, :cond_13

    move-object v4, v6

    goto :goto_19

    :cond_13
    invoke-virtual {v3, v4, v6}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/c;

    :goto_19
    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v1, v9, :cond_fc

    if-eq v1, v7, :cond_fc

    const/16 v7, 0x82

    const/16 v11, 0x42

    const/16 v12, 0x21

    const/16 v13, 0x11

    if-eq v1, v13, :cond_3a

    if-eq v1, v12, :cond_3a

    if-eq v1, v11, :cond_3a

    if-ne v1, v7, :cond_32

    goto :goto_3a

    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    :goto_3a
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iget v15, v0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    if-eq v15, v5, :cond_47

    invoke-direct {v0, v15, v14}, Lr0/a;->getBoundsInParent(ILandroid/graphics/Rect;)V

    goto :goto_52

    :cond_47
    if-eqz v2, :cond_4d

    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_52

    :cond_4d
    iget-object v2, v0, Lr0/a;->mHost:Landroid/view/View;

    invoke-static {v2, v1, v14}, Lr0/a;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    :goto_52
    sget-object v2, Lr0/a;->SPARSE_VALUES_ADAPTER:Lr0/b$b;

    sget-object v15, Lr0/a;->NODE_ADAPTER:Lr0/b$a;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eq v1, v13, :cond_88

    if-eq v1, v12, :cond_7f

    if-eq v1, v11, :cond_75

    if-ne v1, v7, :cond_6d

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v9

    neg-int v7, v7

    invoke-virtual {v5, v10, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_90

    :cond_6d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_75
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v9

    neg-int v7, v7

    invoke-virtual {v5, v7, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_90

    :cond_7f
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v9

    invoke-virtual {v5, v10, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_90

    :cond_88
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v9

    invoke-virtual {v5, v7, v10}, Landroid/graphics/Rect;->offset(II)V

    :goto_90
    check-cast v2, Lr0/a$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v3, Landroidx/collection/g;->c:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move v11, v10

    :goto_9d
    if-ge v11, v2, :cond_165

    iget-object v12, v3, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aget-object v12, v12, v11

    check-cast v12, Ln0/c;

    if-ne v12, v4, :cond_a8

    goto :goto_f8

    :cond_a8
    move-object v13, v15

    check-cast v13, Lr0/a$a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12, v7}, Ln0/c;->e(Landroid/graphics/Rect;)V

    invoke-static {v1, v14, v7}, Lr0/b;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_b8

    goto :goto_f1

    :cond_b8
    invoke-static {v1, v14, v5}, Lr0/b;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_bf

    goto :goto_ef

    :cond_bf
    invoke-static {v1, v14, v7, v5}, Lr0/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_c6

    goto :goto_ef

    :cond_c6
    invoke-static {v1, v14, v5, v7}, Lr0/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_cd

    goto :goto_f1

    :cond_cd
    invoke-static {v1, v14, v7}, Lr0/b;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v13

    invoke-static {v1, v14, v7}, Lr0/b;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v16

    mul-int/lit8 v17, v13, 0xd

    mul-int v17, v17, v13

    mul-int v16, v16, v16

    add-int v13, v16, v17

    invoke-static {v1, v14, v5}, Lr0/b;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v16

    invoke-static {v1, v14, v5}, Lr0/b;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v17

    mul-int/lit8 v18, v16, 0xd

    mul-int v18, v18, v16

    mul-int v17, v17, v17

    add-int v10, v17, v18

    if-ge v13, v10, :cond_f1

    :goto_ef
    move v10, v9

    goto :goto_f2

    :cond_f1
    :goto_f1
    const/4 v10, 0x0

    :goto_f2
    if-eqz v10, :cond_f8

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v6, v12

    :cond_f8
    :goto_f8
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto :goto_9d

    :cond_fc
    iget-object v2, v0, Lr0/a;->mHost:Landroid/view/View;

    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v2

    if-ne v2, v9, :cond_108

    move v2, v9

    goto :goto_109

    :cond_108
    const/4 v2, 0x0

    :goto_109
    sget-object v5, Lr0/a;->SPARSE_VALUES_ADAPTER:Lr0/b$b;

    sget-object v10, Lr0/a;->NODE_ADAPTER:Lr0/b$a;

    check-cast v5, Lr0/a$b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v3, Landroidx/collection/g;->c:I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_11a
    if-ge v12, v5, :cond_128

    iget-object v13, v3, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aget-object v13, v13, v12

    check-cast v13, Ln0/c;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_11a

    :cond_128
    new-instance v5, Lr0/b$c;

    invoke-direct {v5, v2, v10}, Lr0/b$c;-><init>(ZLr0/b$a;)V

    invoke-static {v11, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eq v1, v9, :cond_151

    if-ne v1, v7, :cond_149

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v4, :cond_13c

    move v2, v8

    goto :goto_140

    :cond_13c
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    :goto_140
    add-int/2addr v2, v9

    if-ge v2, v1, :cond_163

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    goto :goto_163

    :cond_149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_151
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v4, :cond_158

    goto :goto_15c

    :cond_158
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_15c
    add-int/2addr v1, v8

    if-ltz v1, :cond_163

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    :cond_163
    :goto_163
    check-cast v6, Ln0/c;

    :cond_165
    if-nez v6, :cond_16a

    const/high16 v5, -0x80000000

    goto :goto_181

    :cond_16a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    :goto_16e
    iget v1, v3, Landroidx/collection/g;->c:I

    if-ge v10, v1, :cond_17d

    iget-object v1, v3, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aget-object v1, v1, v10

    if-ne v1, v6, :cond_17a

    move v8, v10

    goto :goto_17d

    :cond_17a
    add-int/lit8 v10, v10, 0x1

    goto :goto_16e

    :cond_17d
    :goto_17d
    iget-object v1, v3, Landroidx/collection/g;->a:[I

    aget v5, v1, v8

    :goto_181
    invoke-virtual {v0, v5}, Lr0/a;->requestKeyboardFocusForVirtualView(I)Z

    move-result v1

    return v1
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1d

    const/16 v0, 0x40

    if-eq p2, v0, :cond_18

    const/16 v0, 0x80

    if-eq p2, v0, :cond_13

    invoke-virtual {p0, p1, p2, p3}, Lr0/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_13
    invoke-direct {p0, p1}, Lr0/a;->clearAccessibilityFocus(I)Z

    move-result p1

    return p1

    :cond_18
    invoke-direct {p0, p1}, Lr0/a;->requestAccessibilityFocus(I)Z

    move-result p1

    return p1

    :cond_1d
    invoke-virtual {p0, p1}, Lr0/a;->clearKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1

    :cond_22
    invoke-virtual {p0, p1}, Lr0/a;->requestKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p1, p2}, Lm0/g0$d;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4

    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2c

    :cond_12
    iget v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2c

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1d

    invoke-direct {p0, v0}, Lr0/a;->clearAccessibilityFocus(I)Z

    :cond_1d
    iput p1, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lr0/a;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2c
    :goto_2c
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4

    iget v0, p0, Lr0/a;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lr0/a;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lr0/a;->sendEventForVirtualView(II)Z

    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Lr0/a;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4

    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    return v1

    :cond_6
    const/high16 v0, -0x80000000

    iput v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v1}, Lr0/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lr0/a;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_40

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_2e

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2e

    const/16 p1, 0xa

    if-eq v0, p1, :cond_25

    return v1

    :cond_25
    iget p1, p0, Lr0/a;->mHoveredVirtualViewId:I

    if-eq p1, v4, :cond_2d

    invoke-direct {p0, v4}, Lr0/a;->updateHoveredVirtualView(I)V

    return v3

    :cond_2d
    return v1

    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lr0/a;->getVirtualViewAt(FF)I

    move-result p1

    invoke-direct {p0, p1}, Lr0/a;->updateHoveredVirtualView(I)V

    if-eq p1, v4, :cond_40

    move v1, v3

    :cond_40
    :goto_40
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_48

    const/16 v3, 0x42

    if-eq v0, v3, :cond_37

    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    :pswitch_19  #0x13, 0x14, 0x15, 0x16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-static {v0}, Lr0/a;->keyToDirection(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    move v3, v1

    :goto_29
    if-ge v1, p1, :cond_35

    invoke-direct {p0, v0, v4}, Lr0/a;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_35

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_29

    :cond_35
    move v1, v3

    goto :goto_5e

    :cond_37
    :pswitch_37  #0x17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_5e

    invoke-direct {p0}, Lr0/a;->clickKeyboardFocusedVirtualView()Z

    move v1, v2

    goto :goto_5e

    :cond_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 p1, 0x2

    invoke-direct {p0, p1, v4}, Lr0/a;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_5e

    :cond_54
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-direct {p0, v2, v4}, Lr0/a;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_5e
    :goto_5e
    return v1

    nop

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

    iget v0, p0, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;
    .registers 2

    iget-object p1, p0, Lr0/a;->mNodeProvider:Lr0/a$c;

    if-nez p1, :cond_b

    new-instance p1, Lr0/a$c;

    invoke-direct {p1, p0}, Lr0/a$c;-><init>(Lr0/a;)V

    iput-object p1, p0, Lr0/a;->mNodeProvider:Lr0/a$c;

    :cond_b
    iget-object p1, p0, Lr0/a;->mNodeProvider:Lr0/a$c;

    return-object p1
.end method

.method public getFocusedVirtualView()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lr0/a;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 2

    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

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

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lr0/a;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr0/a;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 5

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lr0/a;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-static {p1, p2}, Ln0/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    iget-object p2, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_22
    return-void
.end method

.method public obtainAccessibilityNodeInfo(I)Ln0/c;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lr0/a;->createNodeForHost()Ln0/c;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-direct {p0, p1}, Lr0/a;->createNodeForChild(I)Ln0/c;

    move-result-object p1

    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    invoke-virtual {p0, v0}, Lr0/a;->clearKeyboardFocusForVirtualView(I)Z

    :cond_9
    if-eqz p1, :cond_e

    invoke-direct {p0, p2, p3}, Lr0/a;->moveFocus(ILandroid/graphics/Rect;)Z

    :cond_e
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, p2}, Lr0/a;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    invoke-virtual {p0, p2}, Lr0/a;->onPopulateNodeForHost(Ln0/c;)V

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

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lr0/a;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_8
    invoke-direct {p0, p2, p3}, Lr0/a;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 5

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    iget v0, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_17

    return v1

    :cond_17
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1e

    invoke-virtual {p0, v0}, Lr0/a;->clearKeyboardFocusForVirtualView(I)Z

    :cond_1e
    if-ne p1, v2, :cond_21

    return v1

    :cond_21
    iput p1, p0, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lr0/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lr0/a;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Lr0/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_22

    :cond_e
    iget-object v1, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    :cond_17
    invoke-direct {p0, p1, p2}, Lr0/a;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Lr0/a;->mHost:Landroid/view/View;

    invoke-interface {v1, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    return v0
.end method
