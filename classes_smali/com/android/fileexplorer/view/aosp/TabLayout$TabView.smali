.class public final Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# instance fields
.field private badgeAnchorView:Landroid/view/View;

.field private badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/TabLayout;Landroid/content/Context;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->defaultMaxLines:I

    .line 9
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 12
    iget p2, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingStart:I

    .line 14
    iget v0, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingTop:I

    .line 16
    iget v1, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingEnd:I

    .line 18
    iget v2, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingBottom:I

    .line 20
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 22
    invoke-static {p0, p2, v0, v1, v2}, Lm0/g0$e;->k(Landroid/view/View;IIII)V

    .line 25
    const/16 p2, 0x11

    .line 27
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 30
    iget-boolean p1, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->inlineLabel:Z

    .line 32
    const/4 p2, 0x1

    .line 33
    xor-int/2addr p1, p2

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p1

    .line 44
    const/16 p2, 0x3ea

    .line 46
    invoke-static {p1, p2}, Lm0/z$a;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Lm0/g0$k;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 53
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->getContentWidth()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->hasBadgeDrawable()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->removeBadge()V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->getBadge()Lcom/google/android/material/badge/BadgeDrawable;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private addOnLayoutChangeListener(Landroid/view/View;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView$1;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView$1;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/view/View;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 12
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 12
    move-result p1

    .line 13
    div-float/2addr p3, p1

    .line 14
    mul-float/2addr p3, p2

    .line 15
    return p3
.end method

.method private clipViewToPaddingForBadge(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    if-eqz v0, :cond_14

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method private createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    const/4 v2, -0x2

    .line 13
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 20
    move-result v4

    .line 21
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    :cond_1c
    return-void
.end method

.method private getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 3
    return-object v0
.end method

.method private getContentWidth()I
    .registers 10

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 14
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customView:Landroid/view/View;

    .line 16
    const/4 v5, 0x2

    .line 17
    aput-object v2, v1, v5

    .line 19
    move v2, v3

    .line 20
    move v5, v2

    .line 21
    move v6, v5

    .line 22
    :goto_15
    if-ge v3, v0, :cond_43

    .line 24
    aget-object v7, v1, v3

    .line 26
    if-eqz v7, :cond_40

    .line 28
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 31
    move-result v8

    .line 32
    if-nez v8, :cond_40

    .line 34
    if-eqz v6, :cond_2c

    .line 36
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 39
    move-result v8

    .line 40
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result v5

    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 48
    move-result v5

    .line 49
    :goto_30
    if-eqz v6, :cond_3b

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 54
    move-result v6

    .line 55
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 58
    move-result v2

    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 63
    move-result v2

    .line 64
    :goto_3f
    move v6, v4

    .line 65
    :cond_40
    add-int/lit8 v3, v3, 0x1

    .line 67
    goto :goto_15

    .line 68
    :cond_43
    sub-int/2addr v2, v5

    .line 69
    return v2
.end method

.method private getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_a

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 8
    if-eq p1, v0, :cond_a

    .line 10
    return-object v1

    .line 11
    :cond_a
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 13
    if-eqz v0, :cond_15

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object p1

    .line 19
    move-object v1, p1

    .line 20
    check-cast v1, Landroid/widget/FrameLayout;

    .line 22
    :cond_15
    return-object v1
.end method

.method private getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 3
    if-nez v0, :cond_e

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 15
    :cond_e
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 20
    if-eqz v0, :cond_16

    .line 22
    return-object v0

    .line 23
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    const-string v1, "Unable to create badge"

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method private hasBadgeDrawable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method private inflateAndAddDefaultIconView()V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_d

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move-object v0, p0

    .line 15
    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f0d0048

    .line 26
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/ImageView;

    .line 32
    iput-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 37
    return-void
.end method

.method private inflateAndAddDefaultTextView()V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v0, p0

    .line 14
    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f0d0049

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 32
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method private removeBadge()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 11
    return-void
.end method

.method private tryAttachBadgeToAnchor(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->hasBadgeDrawable()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    if-eqz p1, :cond_18

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->clipViewToPaddingForBadge(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 23
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 25
    :cond_18
    return-void
.end method

.method private tryRemoveBadgeFromAnchor()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->hasBadgeDrawable()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->clipViewToPaddingForBadge(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 14
    if-eqz v0, :cond_1b

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 18
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v0, v2}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 28
    :cond_1b
    return-void
.end method

.method private tryUpdateBadgeAnchor()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->hasBadgeDrawable()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customView:Landroid/view/View;

    .line 10
    if-eqz v0, :cond_f

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 15
    goto :goto_55

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 18
    if-eqz v0, :cond_30

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 22
    if-eqz v0, :cond_30

    .line 24
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_30

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 34
    if-eq v0, v1, :cond_2c

    .line 36
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 41
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    .line 44
    goto :goto_55

    .line 45
    :cond_2c
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    .line 48
    goto :goto_55

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 51
    if-eqz v0, :cond_52

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 55
    if-eqz v0, :cond_52

    .line 57
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getTabLabelVisibility()I

    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x1

    .line 62
    if-ne v0, v1, :cond_52

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 66
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 68
    if-eq v0, v1, :cond_4e

    .line 70
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 73
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 75
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    .line 78
    goto :goto_55

    .line 79
    :cond_4e
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    .line 82
    goto :goto_55

    .line 83
    :cond_52
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 86
    :goto_55
    return-void
.end method

.method private tryUpdateBadgeDrawableBounds(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->hasBadgeDrawable()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_13

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 9
    if-ne p1, v0, :cond_13

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 13
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 20
    :cond_13
    return-void
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabBackgroundResId:I

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1f

    .line 8
    invoke-static {p1, v0}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    if-eqz p1, :cond_21

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_21

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    :cond_21
    :goto_21
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 36
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 45
    iget-object v0, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 47
    if-eqz v0, :cond_58

    .line 49
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 51
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 54
    const v2, 0x3727c5ac  # 1.0E-5f

    .line 57
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 60
    const/4 v2, -0x1

    .line 61
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 64
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 66
    iget-object v2, v2, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 68
    invoke-static {v2}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 71
    move-result-object v2

    .line 72
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    .line 74
    iget-object v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 76
    iget-boolean v4, v4, Lcom/android/fileexplorer/view/aosp/TabLayout;->unboundedRipple:Z

    .line 78
    if-eqz v4, :cond_50

    .line 80
    move-object p1, v1

    .line 81
    :cond_50
    if-eqz v4, :cond_53

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move-object v1, v0

    .line 85
    :goto_54
    invoke-direct {v3, v2, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 88
    move-object p1, v3

    .line 89
    :cond_58
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 91
    invoke-static {p0, p1}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 99
    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_16

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_16

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move-object v0, v1

    .line 24
    :goto_17
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 26
    if-eqz v2, :cond_20

    .line 28
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    .line 31
    move-result-object v2

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object v2, v1

    .line 34
    :goto_21
    const/16 v3, 0x8

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz p2, :cond_38

    .line 39
    if-eqz v0, :cond_32

    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    goto :goto_38

    .line 51
    :cond_32
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_38
    :goto_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v0

    .line 61
    const/4 v5, 0x1

    .line 62
    xor-int/2addr v0, v5

    .line 63
    if-eqz p1, :cond_5e

    .line 65
    if-eqz v0, :cond_58

    .line 67
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 72
    invoke-static {v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->access$1000(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)I

    .line 75
    move-result v2

    .line 76
    if-ne v2, v5, :cond_51

    .line 78
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    goto :goto_54

    .line 82
    :cond_51
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_54
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    goto :goto_5e

    .line 89
    :cond_58
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_5e
    :goto_5e
    if-eqz p2, :cond_a0

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    if-eqz v0, :cond_78

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_78

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    .line 118
    move-result v2

    .line 119
    float-to-int v2, v2

    .line 120
    goto :goto_79

    .line 121
    :cond_78
    move v2, v4

    .line 122
    :goto_79
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 124
    iget-boolean v3, v3, Lcom/android/fileexplorer/view/aosp/TabLayout;->inlineLabel:Z

    .line 126
    if-eqz v3, :cond_91

    .line 128
    invoke-static {p1}, Lm0/i;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 131
    move-result v3

    .line 132
    if-eq v2, v3, :cond_a0

    .line 134
    invoke-static {p1, v2}, Lm0/i;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 137
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 145
    goto :goto_a0

    .line 146
    :cond_91
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 148
    if-eq v2, v3, :cond_a0

    .line 150
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 152
    invoke-static {p1, v4}, Lm0/i;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 161
    :cond_a0
    :goto_a0
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 163
    if-eqz p1, :cond_a9

    .line 165
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->access$100(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Ljava/lang/CharSequence;

    .line 168
    move-result-object p1

    .line 169
    goto :goto_aa

    .line 170
    :cond_a9
    move-object p1, v1

    .line 171
    :goto_aa
    if-eqz v0, :cond_ad

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move-object v1, p1

    .line 175
    :goto_ae
    invoke-static {p0, v1}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_19

    .line 13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_19

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 24
    move-result v0

    .line 25
    or-int/2addr v2, v0

    .line 26
    :cond_19
    if-eqz v2, :cond_23

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 36
    :cond_23
    return-void
.end method

.method public getTab()Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 3
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 6
    if-eqz v0, :cond_2e

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2e

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v0, ", "

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    :cond_2e
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x1

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 51
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x1

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 60
    move-result v6

    .line 61
    invoke-static/range {v1 .. v6}, Ln0/c$d;->a(IIIIZZ)Ln0/c$d;

    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Ln0/c$d;->a:Ljava/lang/Object;

    .line 67
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_5a

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 82
    sget-object v0, Ln0/c$a;->e:Ln0/c$a;

    .line 84
    iget-object v0, v0, Ln0/c$a;->a:Ljava/lang/Object;

    .line 86
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 91
    :cond_5a
    invoke-static {p1}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 94
    move-result-object p1

    .line 95
    const-string v0, "AccessibilityNodeInfo.roleDescription"

    .line 97
    const-string v1, "Tab"

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 11
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabMaxWidth()I

    .line 14
    move-result v2

    .line 15
    if-lez v2, :cond_1e

    .line 17
    if-eqz v1, :cond_14

    .line 19
    if-le v0, v2, :cond_1e

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 23
    iget p1, p1, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabMaxWidth:I

    .line 25
    const/high16 v0, -0x80000000

    .line 27
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    move-result p1

    .line 31
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 36
    if-eqz v0, :cond_9a

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 40
    iget v0, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextSize:F

    .line 42
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->defaultMaxLines:I

    .line 44
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 46
    const/4 v3, 0x1

    .line 47
    if-eqz v2, :cond_38

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_38

    .line 55
    move v1, v3

    .line 56
    goto :goto_46

    .line 57
    :cond_38
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 59
    if-eqz v2, :cond_46

    .line 61
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    .line 64
    move-result v2

    .line 65
    if-le v2, v3, :cond_46

    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 69
    iget v0, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextMultiLineSize:F

    .line 71
    :cond_46
    :goto_46
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    .line 76
    move-result v2

    .line 77
    iget-object v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    .line 82
    move-result v4

    .line 83
    iget-object v5, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 85
    invoke-static {v5}, Landroidx/core/widget/k$a;->b(Landroid/widget/TextView;)I

    .line 88
    move-result v5

    .line 89
    cmpl-float v2, v0, v2

    .line 91
    if-nez v2, :cond_60

    .line 93
    if-ltz v5, :cond_9a

    .line 95
    if-eq v1, v5, :cond_9a

    .line 97
    :cond_60
    iget-object v5, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 99
    iget v5, v5, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 101
    const/4 v6, 0x0

    .line 102
    if-ne v5, v3, :cond_8b

    .line 104
    if-lez v2, :cond_8b

    .line 106
    if-ne v4, v3, :cond_8b

    .line 108
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_8a

    .line 116
    invoke-direct {p0, v2, v6, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    .line 119
    move-result v2

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 123
    move-result v4

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 127
    move-result v5

    .line 128
    sub-int/2addr v4, v5

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 132
    move-result v5

    .line 133
    sub-int/2addr v4, v5

    .line 134
    int-to-float v4, v4

    .line 135
    cmpl-float v2, v2, v4

    .line 137
    if-lez v2, :cond_8b

    .line 139
    :cond_8a
    move v3, v6

    .line 140
    :cond_8b
    if-eqz v3, :cond_9a

    .line 142
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 144
    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 152
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 155
    :cond_9a
    return-void
.end method

.method public performClick()Z
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 7
    if-eqz v1, :cond_14

    .line 9
    if-nez v0, :cond_e

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 17
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->select()V

    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_14
    return v0
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->setTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->setSelected(Z)V

    .line 9
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customView:Landroid/view/View;

    .line 29
    if-eqz v0, :cond_21

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 34
    :cond_21
    return-void
.end method

.method public setTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->update()V

    .line 10
    :cond_9
    return-void
.end method

.method public final update()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getCustomView()Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move-object v2, v1

    .line 12
    :goto_b
    if-eqz v2, :cond_53

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v3

    .line 18
    if-eq v3, p0, :cond_1d

    .line 20
    if-eqz v3, :cond_1a

    .line 22
    check-cast v3, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_1a
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    :cond_1d
    iput-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customView:Landroid/view/View;

    .line 32
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 34
    const/16 v4, 0x8

    .line 36
    if-eqz v3, :cond_28

    .line 38
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_28
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 43
    if-eqz v3, :cond_34

    .line 45
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_34
    const v3, 0x1020014

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/widget/TextView;

    .line 62
    iput-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 64
    if-eqz v3, :cond_47

    .line 66
    invoke-static {v3}, Landroidx/core/widget/k$a;->b(Landroid/widget/TextView;)I

    .line 69
    move-result v3

    .line 70
    iput v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->defaultMaxLines:I

    .line 72
    :cond_47
    const v3, 0x1020006

    .line 75
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/widget/ImageView;

    .line 81
    iput-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 83
    goto :goto_60

    .line 84
    :cond_53
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customView:Landroid/view/View;

    .line 86
    if-eqz v2, :cond_5c

    .line 88
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customView:Landroid/view/View;

    .line 93
    :cond_5c
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 95
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 97
    :goto_60
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customView:Landroid/view/View;

    .line 99
    if-nez v2, :cond_c5

    .line 101
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 103
    if-nez v2, :cond_6b

    .line 105
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->inflateAndAddDefaultIconView()V

    .line 108
    :cond_6b
    if-eqz v0, :cond_7b

    .line 110
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_7b

    .line 116
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 123
    move-result-object v1

    .line 124
    :cond_7b
    if-eqz v1, :cond_8d

    .line 126
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 128
    iget-object v2, v2, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 130
    invoke-static {v1, v2}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 133
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 135
    iget-object v2, v2, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 137
    if-eqz v2, :cond_8d

    .line 139
    invoke-static {v1, v2}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 142
    :cond_8d
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 144
    if-nez v1, :cond_9c

    .line 146
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->inflateAndAddDefaultTextView()V

    .line 149
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 151
    invoke-static {v1}, Landroidx/core/widget/k$a;->b(Landroid/widget/TextView;)I

    .line 154
    move-result v1

    .line 155
    iput v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->defaultMaxLines:I

    .line 157
    :cond_9c
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 161
    iget v2, v2, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextAppearance:I

    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 166
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 168
    iget-object v1, v1, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 170
    if-eqz v1, :cond_b0

    .line 172
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 174
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 177
    :cond_b0
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 181
    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 184
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 187
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 189
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    .line 192
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 194
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    .line 197
    goto :goto_d2

    .line 198
    :cond_c5
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 200
    if-nez v1, :cond_cd

    .line 202
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 204
    if-eqz v2, :cond_d2

    .line 206
    :cond_cd
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 208
    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 211
    :cond_d2
    :goto_d2
    if-eqz v0, :cond_e5

    .line 213
    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->access$100(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Ljava/lang/CharSequence;

    .line 216
    move-result-object v1

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_e5

    .line 223
    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->access$100(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Ljava/lang/CharSequence;

    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    :cond_e5
    if-eqz v0, :cond_ef

    .line 232
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->isSelected()Z

    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_ef

    .line 238
    const/4 v0, 0x1

    .line 239
    goto :goto_f0

    .line 240
    :cond_ef
    const/4 v0, 0x0

    .line 241
    :goto_f0
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->setSelected(Z)V

    .line 244
    return-void
.end method

.method public final updateOrientation()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    iget-boolean v0, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->inlineLabel:Z

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 12
    if-nez v0, :cond_1a

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 16
    if-eqz v1, :cond_12

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 23
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 26
    goto :goto_1f

    .line 27
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 29
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 32
    :goto_1f
    return-void
.end method
