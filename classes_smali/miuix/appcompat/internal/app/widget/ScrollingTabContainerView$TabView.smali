.class public Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private mBadgeView:Landroid/widget/ImageView;

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mTab:Landroidx/appcompat/app/a$d;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    new-array p1, p1, [Landroid/view/View;

    .line 7
    const/4 p2, 0x0

    .line 8
    aput-object p0, p1, p2

    .line 10
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 20
    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 23
    move-result-object p1

    .line 24
    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    .line 26
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 29
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method


# virtual methods
.method public attach(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroidx/appcompat/app/a$d;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 5
    if-eqz p3, :cond_c

    .line 7
    const p1, 0x800013

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 13
    :cond_c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->update()V

    .line 16
    return-void
.end method

.method public bindTab(Landroidx/appcompat/app/a$d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->update()V

    .line 6
    return-void
.end method

.method public getTab()Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 3
    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 6
    if-eqz p1, :cond_12

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabTextStyleId(Landroid/widget/TextView;)I

    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 19
    :cond_12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 21
    if-eqz p1, :cond_1f

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 25
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_1f
    return-void
.end method

.method public update()V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/a$d;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getCustomView()Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_16

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 11
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 13
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v0, p0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 21
    goto/16 :goto_e9

    .line 23
    :cond_16
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_20

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 33
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getText()Ljava/lang/CharSequence;

    .line 44
    move-result-object v4

    .line 45
    const/16 v5, 0x10

    .line 47
    const/4 v6, 0x0

    .line 48
    const/16 v7, 0x8

    .line 50
    const/4 v8, -0x2

    .line 51
    if-eqz v3, :cond_57

    .line 53
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 55
    if-nez v9, :cond_4c

    .line 57
    new-instance v9, Landroid/widget/ImageView;

    .line 59
    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 69
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {p0, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 75
    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 77
    :cond_4c
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    goto :goto_63

    .line 88
    :cond_57
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 90
    if-eqz v3, :cond_63

    .line 92
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_63
    :goto_63
    if-eqz v4, :cond_d2

    .line 102
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 104
    if-nez v3, :cond_88

    .line 106
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 108
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 110
    invoke-virtual {v9}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getDefaultTabTextStyle()I

    .line 113
    move-result v9

    .line 114
    invoke-direct {v3, v1, v2, v9}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 119
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 122
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 129
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 137
    :cond_88
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 144
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    .line 149
    if-nez v2, :cond_de

    .line 151
    sget v2, Lmiuix/appcompat/R$attr;->actionBarTabBadgeIcon:I

    .line 153
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_de

    .line 159
    new-instance v3, Landroid/widget/ImageView;

    .line 161
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    const/16 v2, 0x30

    .line 177
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 182
    move-result-object v2

    .line 183
    if-eqz v2, :cond_c9

    .line 185
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 188
    move-result v2

    .line 189
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 191
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    .line 194
    move-result v4

    .line 195
    if-le v2, v4, :cond_c9

    .line 197
    sub-int/2addr v2, v4

    .line 198
    div-int/lit8 v2, v2, 0x2

    .line 200
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 202
    :cond_c9
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    .line 210
    goto :goto_de

    .line 211
    :cond_d2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 213
    if-eqz v1, :cond_de

    .line 215
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 220
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_de
    :goto_de
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 225
    if-eqz v1, :cond_e9

    .line 227
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getContentDescription()Ljava/lang/CharSequence;

    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 234
    :cond_e9
    :goto_e9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 236
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 238
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTabTextStyle(Landroid/widget/TextView;)V

    .line 241
    return-void
.end method
