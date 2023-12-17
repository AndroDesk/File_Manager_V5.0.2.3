.class public Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/o$a;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field private final defaultMargin:I

.field private icon:Landroid/widget/ImageView;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Landroidx/appcompat/view/menu/j;

.field private itemPosition:I

.field private labelVisibilityMode:I

.field private final largeLabel:Landroid/widget/TextView;

.field private originalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Landroid/widget/TextView;

.field private wrappedIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a0

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/R$layout;->design_bottom_navigation_item:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    sget p1, Lcom/google/android/material/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    sget p1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 9
    sget p1, Lcom/google/android/material/R$id;->icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 10
    sget p1, Lcom/google/android/material/R$id;->smallLabel:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 11
    sget p2, Lcom/google/android/material/R$id;->largeLabel:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 12
    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 p3, 0x2

    .line 13
    invoke-static {p1, p3}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 14
    invoke-static {p2, p3}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 17
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_62

    .line 18
    new-instance p2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_62
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->tryUpdateBadgeBounds(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .registers 5

    .line 1
    sub-float v0, p1, p2

    .line 3
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    .line 5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 7
    mul-float v1, p2, v0

    .line 9
    div-float/2addr v1, p1

    .line 10
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    .line 12
    mul-float/2addr p1, v0

    .line 13
    div-float/2addr p1, p2

    .line 14
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    .line 16
    return-void
.end method

.method private getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_10

    .line 6
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 8
    if-eqz p1, :cond_10

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object p1

    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Landroid/widget/FrameLayout;

    .line 17
    :cond_10
    return-object v1
.end method

.method private hasBadge()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

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

.method private setViewLayoutParams(Landroid/view/View;II)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 9
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    return-void
.end method

.method private setViewValues(Landroid/view/View;FFI)V
    .registers 5

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 7
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    return-void
.end method

.method private tryAttachBadgeToAnchor(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->hasBadge()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    if-eqz p1, :cond_19

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 26
    :cond_19
    return-void
.end method

.method private tryRemoveBadgeFromAnchor(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->hasBadge()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    if-eqz p1, :cond_19

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 29
    return-void
.end method

.method private tryUpdateBadgeBounds(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->hasBadge()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 3
    return-object v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 3
    return-object v0
.end method

.method public getItemPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    .line 3
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/j;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setCheckable(Z)V

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 17
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isEnabled()Z

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setEnabled(Z)V

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    iget p2, p1, Landroidx/appcompat/view/menu/j;->a:I

    .line 38
    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 41
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_35

    .line 49
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    :cond_35
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->r:Ljava/lang/CharSequence;

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_40

    .line 62
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->r:Ljava/lang/CharSequence;

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 67
    :goto_42
    invoke-static {p0, p2}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isVisible()Z

    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4d

    .line 76
    const/4 p1, 0x0

    .line 77
    goto :goto_4f

    .line 78
    :cond_4d
    const/16 p1, 0x8

    .line 80
    :goto_4f
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 9
    if-eqz v0, :cond_1d

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1d

    .line 17
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    sget-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    .line 27
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 30
    :cond_1d
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 6
    if-eqz v0, :cond_3a

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3a

    .line 14
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 16
    iget-object v1, v0, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 18
    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1d

    .line 26
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 28
    iget-object v1, v0, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 30
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ", "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 45
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    :cond_3a
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getItemPosition()I

    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x1

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 70
    move-result v6

    .line 71
    invoke-static/range {v1 .. v6}, Ln0/c$d;->a(IIIIZZ)Ln0/c$d;

    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, Ln0/c$d;->a:Ljava/lang/Object;

    .line 77
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_64

    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 92
    sget-object v0, Ln0/c$a;->e:Ln0/c$a;

    .line 94
    iget-object v0, v0, Ln0/c$a;->a:Ljava/lang/Object;

    .line 96
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 101
    :cond_64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object v0

    .line 105
    sget v1, Lcom/google/android/material/R$string;->item_view_role_description:I

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-static {p1}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 114
    move-result-object p1

    .line 115
    const-string v1, "AccessibilityNodeInfo.roleDescription"

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeBadge()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->tryRemoveBadgeFromAnchor(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setCheckable(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4
    return-void
.end method

.method public setChecked(Z)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    div-int/2addr v1, v2

    .line 9
    int-to-float v1, v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 13
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 23
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v1

    .line 29
    div-int/2addr v1, v2

    .line 30
    int-to-float v1, v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 34
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 36
    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 44
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    .line 46
    const/4 v1, -0x1

    .line 47
    const/16 v3, 0x11

    .line 49
    const/high16 v4, 0x3f000000  # 0.5f

    .line 51
    const/4 v5, 0x0

    .line 52
    const/16 v6, 0x31

    .line 54
    const/4 v7, 0x4

    .line 55
    const/high16 v8, 0x3f800000  # 1.0f

    .line 57
    if-eq v0, v1, :cond_aa

    .line 59
    if-eqz v0, :cond_89

    .line 61
    const/4 v1, 0x1

    .line 62
    if-eq v0, v1, :cond_58

    .line 64
    if-eq v0, v2, :cond_43

    .line 66
    goto/16 :goto_fd

    .line 68
    :cond_43
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 70
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 72
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 75
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 77
    const/16 v1, 0x8

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    goto/16 :goto_fd

    .line 89
    :cond_58
    if-eqz p1, :cond_74

    .line 91
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 93
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 95
    int-to-float v1, v1

    .line 96
    iget v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    .line 98
    add-float/2addr v1, v2

    .line 99
    float-to-int v1, v1

    .line 100
    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 103
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 105
    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 108
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 110
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    .line 112
    invoke-direct {p0, v0, v1, v1, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 115
    goto/16 :goto_fd

    .line 117
    :cond_74
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 119
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 121
    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 124
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 126
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    .line 128
    invoke-direct {p0, v0, v1, v1, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 131
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 133
    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 136
    goto/16 :goto_fd

    .line 138
    :cond_89
    if-eqz p1, :cond_98

    .line 140
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 142
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 144
    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 147
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 149
    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 152
    goto :goto_a4

    .line 153
    :cond_98
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 155
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 157
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 160
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 162
    invoke-direct {p0, v0, v4, v4, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 165
    :goto_a4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 167
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    goto :goto_fd

    .line 171
    :cond_aa
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    .line 173
    if-eqz v0, :cond_cf

    .line 175
    if-eqz p1, :cond_bd

    .line 177
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 179
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 181
    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 184
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 186
    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 189
    goto :goto_c9

    .line 190
    :cond_bd
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 192
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 194
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 197
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 199
    invoke-direct {p0, v0, v4, v4, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 202
    :goto_c9
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 204
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 207
    goto :goto_fd

    .line 208
    :cond_cf
    if-eqz p1, :cond_ea

    .line 210
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 212
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 214
    int-to-float v1, v1

    .line 215
    iget v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    .line 217
    add-float/2addr v1, v2

    .line 218
    float-to-int v1, v1

    .line 219
    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 222
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 224
    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 227
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 229
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    .line 231
    invoke-direct {p0, v0, v1, v1, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 234
    goto :goto_fd

    .line 235
    :cond_ea
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 237
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 239
    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 242
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 244
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    .line 246
    invoke-direct {p0, v0, v1, v1, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 249
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 251
    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 254
    :goto_fd
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 257
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 260
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    if-eqz p1, :cond_22

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    const/16 v0, 0x3ea

    .line 27
    invoke-static {p1, v0}, Lm0/z$a;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Lm0/g0$k;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    invoke-static {p0, p1}, Lm0/g0;->o(Landroid/view/View;Lm0/z;)V

    .line 39
    :goto_26
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz p1, :cond_21

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p1

    .line 21
    :goto_14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 29
    if-eqz v0, :cond_21

    .line 31
    invoke-static {p1, v0}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 11
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 13
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->wrappedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    :cond_12
    return-void
.end method

.method public setItemBackground(I)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    :cond_14
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {p0, p1}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    .line 3
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    .line 3
    if-eq v0, p1, :cond_16

    .line 5
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    .line 7
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-eqz v0, :cond_16

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 23
    :cond_16
    return-void
.end method

.method public setShifting(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    .line 3
    if-eq v0, p1, :cond_16

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    .line 7
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-eqz v0, :cond_16

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 23
    :cond_16
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTextAppearanceActive(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    .line 17
    move-result v0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 21
    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    .line 17
    move-result v0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 21
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 13
    :cond_c
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 13
    if-eqz v0, :cond_16

    .line 15
    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_19

    .line 23
    :cond_16
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 28
    if-eqz v0, :cond_2a

    .line 30
    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->r:Ljava/lang/CharSequence;

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_26

    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/j;

    .line 41
    iget-object p1, p1, Landroidx/appcompat/view/menu/j;->r:Ljava/lang/CharSequence;

    .line 43
    :cond_2a
    :goto_2a
    invoke-static {p0, p1}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
