.class Lcom/google/android/material/internal/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field public overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    .line 6
    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/internal/ViewOverlayApi14;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    .line 11
    return-void
.end method

.method public static createFrom(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayApi14;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_27

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v3

    .line 18
    instance-of v4, v3, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    .line 20
    if-eqz v4, :cond_1a

    .line 22
    check-cast v3, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    .line 24
    iget-object p0, v3, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->viewOverlay:Lcom/google/android/material/internal/ViewOverlayApi14;

    .line 26
    return-object p0

    .line 27
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    new-instance v1, Lcom/google/android/material/internal/ViewGroupOverlayApi14;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/internal/ViewGroupOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 39
    return-object v1

    .line 40
    :cond_27
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method
