.class public Lmiuix/appcompat/widget/BadgeDrawable;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"


# static fields
.field public static final GRAVITY_END_BOTTOM:I

.field public static final GRAVITY_END_TOP:I

.field public static final GRAVITY_START_BOTTOM:I

.field public static final GRAVITY_START_TOP:I

.field public static final MODE_EXACT:I

.field public static final MODE_IN:I

.field private static final TAG:Ljava/lang/String; = "BadgeDrawable"


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mGravity:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/widget/BadgeDrawable;->GRAVITY_END_BOTTOM:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/widget/BadgeDrawable;->GRAVITY_END_TOP:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/widget/BadgeDrawable;->GRAVITY_START_BOTTOM:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/widget/BadgeDrawable;->GRAVITY_START_TOP:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/widget/BadgeDrawable;->MODE_EXACT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/widget/BadgeDrawable;->MODE_IN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getBadgeRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .registers 13

    const/4 v0, 0x0

    const-string v1, "BadgeDrawable"

    if-nez p1, :cond_b

    const-string p1, "can not attach badge on a null object."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_15

    const-string p1, "can not find badge drawable resource."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    iget v4, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_6a

    const/4 v8, 0x3

    if-eq v4, v7, :cond_4d

    if-eq v4, v5, :cond_6a

    if-eq v4, v8, :cond_4d

    const-string p1, "invalid gravity value."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v6

    move p2, p1

    move v3, p2

    goto/16 :goto_9e

    :cond_4d
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v3

    add-int/2addr v3, p2

    if-nez p1, :cond_55

    if-eq v4, v7, :cond_59

    :cond_55
    if-eqz p1, :cond_5a

    if-ne v4, v8, :cond_5a

    :cond_59
    move v6, v7

    :cond_5a
    if-eqz v6, :cond_5f

    iget p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_62

    :cond_5f
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    :goto_62
    move v6, p1

    add-int p1, v6, v2

    move v9, p2

    move p2, p1

    move p1, v6

    move v6, v9

    goto :goto_9e

    :cond_6a
    if-ne p2, v7, :cond_72

    iget v1, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v1, v8

    goto :goto_74

    :cond_72
    iget v1, v0, Landroid/graphics/Rect;->top:I

    :goto_74
    add-int/2addr v3, v1

    if-nez p1, :cond_79

    if-eqz v4, :cond_7d

    :cond_79
    if-eqz p1, :cond_7e

    if-ne v4, v5, :cond_7e

    :cond_7d
    move v6, v7

    :cond_7e
    if-ne p2, v7, :cond_90

    if-eqz v6, :cond_88

    iget p1, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 p2, v2, 0x2

    add-int/2addr p2, p1

    goto :goto_8e

    :cond_88
    iget p1, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 p2, v2, 0x2

    sub-int p2, p1, p2

    :goto_8e
    move v6, p2

    goto :goto_99

    :cond_90
    if-eqz v6, :cond_95

    iget p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_98

    :cond_95
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    :goto_98
    move v6, p1

    :goto_99
    add-int p1, v6, v2

    move p2, p1

    move p1, v6

    move v6, v1

    :goto_9e
    iput v6, v0, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method


# virtual methods
.method public attachBadgeDrawable(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;I)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;II)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;II)V
    .registers 5

    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_11

    const-string p1, "BadgeDrawable"

    const-string p2, "attach failed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_20

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_20
    iget-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p2

    iget-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public detachBadgeDrawable()V
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    :cond_b
    return-void
.end method

.method public detachBadgeDrawable(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    return-void

    :cond_8
    const-string p1, "BadgeDrawable"

    const-string v0, "set invalid gravity value."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    return-void
.end method
