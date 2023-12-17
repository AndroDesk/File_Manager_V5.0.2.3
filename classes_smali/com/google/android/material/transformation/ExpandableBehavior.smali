.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "ExpandableBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final STATE_COLLAPSED:I = 0x2

.field private static final STATE_EXPANDED:I = 0x1

.field private static final STATE_UNINITIALIZED:I


# instance fields
.field private currentState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/transformation/ExpandableBehavior;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 3
    return p0
.end method

.method private didStateChange(Z)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_d

    .line 5
    iget p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 7
    if-eqz p1, :cond_b

    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne p1, v2, :cond_c

    .line 12
    :cond_b
    move v0, v1

    .line 13
    :cond_c
    return v0

    .line 14
    :cond_d
    iget p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 16
    if-ne p1, v1, :cond_12

    .line 18
    move v0, v1

    .line 19
    :cond_12
    return v0
.end method

.method public static from(Landroid/view/View;Ljava/lang/Class;)Lcom/google/android/material/transformation/ExpandableBehavior;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/material/transformation/ExpandableBehavior;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    if-eqz v0, :cond_1f

    .line 9
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 11
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 13
    instance-of v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;

    .line 15
    if-eqz v0, :cond_17

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/google/android/material/transformation/ExpandableBehavior;

    .line 23
    return-object p0

    .line 24
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string p1, "The view is not associated with ExpandableBehavior"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0

    .line 32
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    const-string p1, "The view is not a child of CoordinatorLayout"

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0
.end method


# virtual methods
.method public findExpandableWidget(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Lcom/google/android/material/expandable/ExpandableWidget;
    .registers 8

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v1, :cond_1d

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroid/view/View;

    .line 18
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/material/transformation/ExpandableBehavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1a

    .line 24
    check-cast v3, Lcom/google/android/material/expandable/ExpandableWidget;

    .line 26
    return-object v3

    .line 27
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public abstract layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .line 1
    check-cast p3, Lcom/google/android/material/expandable/ExpandableWidget;

    .line 3
    invoke-interface {p3}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/ExpandableBehavior;->didStateChange(Z)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_24

    .line 13
    invoke-interface {p3}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_15

    .line 20
    move p1, v0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p1, 0x2

    .line 23
    :goto_16
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 25
    move-object p1, p3

    .line 26
    check-cast p1, Landroid/view/View;

    .line 28
    invoke-interface {p3}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    .line 31
    move-result p3

    .line 32
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public abstract onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 6

    .line 1
    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p2}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_2f

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableBehavior;->findExpandableWidget(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Lcom/google/android/material/expandable/ExpandableWidget;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_2f

    .line 15
    invoke-interface {p1}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    .line 18
    move-result p3

    .line 19
    invoke-direct {p0, p3}, Lcom/google/android/material/transformation/ExpandableBehavior;->didStateChange(Z)Z

    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_2f

    .line 25
    invoke-interface {p1}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_20

    .line 31
    const/4 p3, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p3, 0x2

    .line 34
    :goto_21
    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/android/material/transformation/ExpandableBehavior$1;

    .line 42
    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/material/transformation/ExpandableBehavior$1;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILcom/google/android/material/expandable/ExpandableWidget;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 48
    :cond_2f
    const/4 p1, 0x0

    .line 49
    return p1
.end method
