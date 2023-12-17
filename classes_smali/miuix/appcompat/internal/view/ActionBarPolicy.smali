.class public Lmiuix/appcompat/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 9
    const/16 v1, 0xe

    .line 11
    if-ge v0, v1, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 15
    return v0
.end method

.method public getMaxActionButtons()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/appcompat/R$integer;->abc_max_action_buttons:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getStackedTabMaxWidth()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_stacked_tab_max_width:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getTabContainerHeight()I
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 3
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x10102f4

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    move-result-object v0

    .line 14
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_height:I

    .line 16
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 19
    move-result v5

    .line 20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    if-gtz v5, :cond_28

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 27
    const v5, 0x10102ce

    .line 30
    invoke-virtual {v0, v2, v1, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 37
    move-result v5

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    :cond_28
    return v5
.end method

.method public hasEmbeddedTabs()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 3
    sget v1, Lmiuix/appcompat/R$attr;->actionBarEmbedTabs:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isTightTitle()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 3
    sget v1, Lmiuix/appcompat/R$attr;->actionBarTightTitle:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isTitleEnableEllipsis()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 3
    sget v1, Lmiuix/appcompat/R$attr;->actionBarTitleEnableEllipsis:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public showsOverflowMenuButton()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
