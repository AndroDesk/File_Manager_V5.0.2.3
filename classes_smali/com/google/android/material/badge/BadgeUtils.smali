.class public Lcom/google/android/material/badge/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# static fields
.field public static final USE_COMPAT_PARENT:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 4
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 4
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 6
    if-eqz v0, :cond_b

    .line 8
    invoke-virtual {p2, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    goto :goto_12

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :goto_12
    return-void
.end method

.method public static createBadgeDrawablesFromSavedStates(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/internal/ParcelableSparseArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_2e

    .line 17
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 27
    if-eqz v3, :cond_26

    .line 29
    invoke-static {p0, v3}, Lcom/google/android/material/badge/BadgeDrawable;->createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Lcom/google/android/material/badge/BadgeDrawable;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_a

    .line 39
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    const-string p1, "BadgeDrawable\'s savedState cannot be null"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0

    .line 47
    :cond_2e
    return-object v0
.end method

.method public static createParcelableBadgeStates(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)",
            "Lcom/google/android/material/internal/ParcelableSparseArray;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2a

    .line 13
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable;

    .line 23
    if-eqz v3, :cond_22

    .line 25
    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeDrawable;->getSavedState()Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_6

    .line 35
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    const-string v0, "badgeDrawable cannot be null"

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0

    .line 43
    :cond_2a
    return-object v0
.end method

.method public static detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 4

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 6
    if-eqz v0, :cond_c

    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p2, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :goto_13
    return-void
.end method

.method public static setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    sget-boolean v1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 8
    if-eqz v1, :cond_b

    .line 10
    move-object v1, p2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move-object v1, p1

    .line 13
    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 22
    return-void
.end method

.method public static updateBadgeBounds(Landroid/graphics/Rect;FFFF)V
    .registers 7

    .line 1
    sub-float v0, p1, p3

    .line 3
    float-to-int v0, v0

    .line 4
    sub-float v1, p2, p4

    .line 6
    float-to-int v1, v1

    .line 7
    add-float/2addr p1, p3

    .line 8
    float-to-int p1, p1

    .line 9
    add-float/2addr p2, p4

    .line 10
    float-to-int p2, p2

    .line 11
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    return-void
.end method
