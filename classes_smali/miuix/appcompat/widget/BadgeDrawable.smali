.class public Lmiuix/appcompat/widget/BadgeDrawable;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"


# static fields
.field public static final GRAVITY_END_BOTTOM:I = 0x3

.field public static final GRAVITY_END_TOP:I = 0x2

.field public static final GRAVITY_START_BOTTOM:I = 0x1

.field public static final GRAVITY_START_TOP:I = 0x0

.field public static final MODE_EXACT:I = 0x1

.field public static final MODE_IN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BadgeDrawable"


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    .line 3
    sget v1, Lmiuix/appcompat/R$attr;->actionBarTabBadgeIcon:I

    .line 5
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private getBadgeRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "BadgeDrawable"

    .line 4
    if-nez p1, :cond_b

    .line 6
    const-string p1, "can not attach badge on a null object."

    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    if-nez v2, :cond_15

    .line 16
    const-string p1, "can not find badge drawable resource."

    .line 18
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-object v0

    .line 22
    :cond_15
    new-instance v0, Landroid/graphics/Rect;

    .line 24
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 27
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 50
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 53
    move-result p1

    .line 54
    iget v4, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 56
    const/4 v5, 0x2

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x1

    .line 59
    if-eqz v4, :cond_6a

    .line 61
    const/4 v8, 0x3

    .line 62
    if-eq v4, v7, :cond_4d

    .line 64
    if-eq v4, v5, :cond_6a

    .line 66
    if-eq v4, v8, :cond_4d

    .line 68
    const-string p1, "invalid gravity value."

    .line 70
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    move p1, v6

    .line 74
    move p2, p1

    .line 75
    move v3, p2

    .line 76
    goto/16 :goto_9e

    .line 78
    :cond_4d
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 80
    sub-int/2addr p2, v3

    .line 81
    add-int/2addr v3, p2

    .line 82
    if-nez p1, :cond_55

    .line 84
    if-eq v4, v7, :cond_59

    .line 86
    :cond_55
    if-eqz p1, :cond_5a

    .line 88
    if-ne v4, v8, :cond_5a

    .line 90
    :cond_59
    move v6, v7

    .line 91
    :cond_5a
    if-eqz v6, :cond_5f

    .line 93
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 95
    goto :goto_62

    .line 96
    :cond_5f
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 98
    sub-int/2addr p1, v2

    .line 99
    :goto_62
    move v6, p1

    .line 100
    add-int p1, v6, v2

    .line 102
    move v9, p2

    .line 103
    move p2, p1

    .line 104
    move p1, v6

    .line 105
    move v6, v9

    .line 106
    goto :goto_9e

    .line 107
    :cond_6a
    if-ne p2, v7, :cond_72

    .line 109
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 111
    div-int/lit8 v8, v3, 0x2

    .line 113
    sub-int/2addr v1, v8

    .line 114
    goto :goto_74

    .line 115
    :cond_72
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 117
    :goto_74
    add-int/2addr v3, v1

    .line 118
    if-nez p1, :cond_79

    .line 120
    if-eqz v4, :cond_7d

    .line 122
    :cond_79
    if-eqz p1, :cond_7e

    .line 124
    if-ne v4, v5, :cond_7e

    .line 126
    :cond_7d
    move v6, v7

    .line 127
    :cond_7e
    if-ne p2, v7, :cond_90

    .line 129
    if-eqz v6, :cond_88

    .line 131
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 133
    div-int/lit8 p2, v2, 0x2

    .line 135
    add-int/2addr p2, p1

    .line 136
    goto :goto_8e

    .line 137
    :cond_88
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 139
    div-int/lit8 p2, v2, 0x2

    .line 141
    sub-int p2, p1, p2

    .line 143
    :goto_8e
    move v6, p2

    .line 144
    goto :goto_99

    .line 145
    :cond_90
    if-eqz v6, :cond_95

    .line 147
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 149
    goto :goto_98

    .line 150
    :cond_95
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 152
    sub-int/2addr p1, v2

    .line 153
    :goto_98
    move v6, p1

    .line 154
    :goto_99
    add-int p1, v6, v2

    .line 156
    move p2, p1

    .line 157
    move p1, v6

    .line 158
    move v6, v1

    .line 159
    :goto_9e
    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 161
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 163
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 165
    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 167
    return-object v0
.end method


# virtual methods
.method public attachBadgeDrawable(Landroid/view/View;)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;I)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;II)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;II)V
    .registers 5

    .line 3
    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    .line 4
    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_11

    const-string p1, "BadgeDrawable"

    const-string p2, "attach failed."

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_20

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 9
    :cond_20
    iget-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p2

    iget-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public detachBadgeDrawable()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    :cond_b
    return-void
.end method

.method public detachBadgeDrawable(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    .line 1
    if-ltz p1, :cond_8

    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p1, v0, :cond_8

    .line 6
    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 8
    return-void

    .line 9
    :cond_8
    const-string p1, "BadgeDrawable"

    .line 11
    const-string v0, "set invalid gravity value."

    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 19
    return-void
.end method
