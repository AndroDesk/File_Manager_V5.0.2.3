.class public Lmiuix/appcompat/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;
    .registers 2

    new-instance v0, Lmiuix/appcompat/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getStackedTabMaxWidth()I
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .registers 7

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const v3, 0x10102f4

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-gtz v5, :cond_28

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x10102ce

    invoke-virtual {v0, v2, v1, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_28
    return v5
.end method

.method public hasEmbeddedTabs()Z
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->actionBarEmbedTabs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public isTightTitle()Z
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->actionBarTightTitle:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public isTitleEnableEllipsis()Z
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->actionBarTitleEnableEllipsis:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public showsOverflowMenuButton()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
