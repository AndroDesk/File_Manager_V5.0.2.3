.class public Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
.super Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
.source "SecondaryTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecondaryTabView"
.end annotation


# instance fields
.field private final mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

.field private mBadgeDisappearOnClick:Z

.field private mBadgeNeeded:Z

.field private mCustomView:Landroid/view/View;

.field private mParent:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

.field private mTab:Landroidx/appcompat/app/a$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeDisappearOnClick:Z

    .line 6
    new-instance p2, Lmiuix/appcompat/widget/BadgeDrawable;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p3}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->initView(Ljava/lang/CharSequence;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->setBadgeNeeded(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->setBadgeDisappearOnClick(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeDisappearOnClick:Z

    .line 3
    return p0
.end method

.method private attachBadge()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method private detachBadge()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/widget/BadgeDrawable;->detachBadgeDrawable()V

    .line 8
    :cond_7
    return-void
.end method

.method private initView(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->initView(Ljava/lang/CharSequence;Z)V

    .line 5
    return-void
.end method

.method private setBadgeDisappearOnClick(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeDisappearOnClick:Z

    .line 3
    return-void
.end method

.method private setBadgeNeeded(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateBadge()V

    .line 6
    return-void
.end method

.method private updateBadge()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->attachBadge()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->detachBadge()V

    .line 12
    :goto_b
    return-void
.end method

.method private updateIconView()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getIconView()Landroid/widget/ImageView;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/app/a$d;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_f
    return-void
.end method


# virtual methods
.method public attach(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Landroidx/appcompat/app/a$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mParent:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->update()V

    .line 8
    return-void
.end method

.method public bindTab(Landroidx/appcompat/app/a$d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->update()V

    .line 6
    return-void
.end method

.method public getTab()Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 3
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateIconView()V

    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateBadge()V

    .line 7
    return-void
.end method

.method public update()V
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getCustomView()Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getIconView()Landroid/widget/ImageView;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTextView()Landroid/widget/TextView;

    .line 14
    move-result-object v3

    .line 15
    if-eqz v1, :cond_1a

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mParent:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 19
    invoke-virtual {v0, p0, v1, v3, v2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mCustomView:Landroid/view/View;

    .line 25
    goto/16 :goto_96

    .line 27
    :cond_1a
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mCustomView:Landroid/view/View;

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v1, :cond_24

    .line 32
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mCustomView:Landroid/view/View;

    .line 37
    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getText()Ljava/lang/CharSequence;

    .line 48
    move-result-object v6

    .line 49
    const/16 v7, 0x10

    .line 51
    const/16 v8, 0x8

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, -0x2

    .line 55
    if-eqz v5, :cond_57

    .line 57
    if-nez v2, :cond_50

    .line 59
    new-instance v5, Landroid/widget/ImageView;

    .line 61
    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    invoke-direct {v11, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    iput v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {p0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 77
    invoke-virtual {p0, v5}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setIconView(Landroid/widget/ImageView;)V

    .line 80
    goto :goto_5f

    .line 81
    :cond_50
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    goto :goto_5f

    .line 88
    :cond_57
    if-eqz v2, :cond_5f

    .line 90
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_5f
    :goto_5f
    if-eqz v6, :cond_85

    .line 98
    if-nez v3, :cond_7e

    .line 100
    new-instance v3, Landroid/widget/TextView;

    .line 102
    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 107
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 110
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setTextView(Landroid/widget/TextView;)V

    .line 126
    goto :goto_8d

    .line 127
    :cond_7e
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 133
    goto :goto_8d

    .line 134
    :cond_85
    if-eqz v3, :cond_8d

    .line 136
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_8d
    :goto_8d
    if-eqz v2, :cond_96

    .line 144
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getContentDescription()Ljava/lang/CharSequence;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    :cond_96
    :goto_96
    return-void
.end method
