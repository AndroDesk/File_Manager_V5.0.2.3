.class public Lcom/android/fileexplorer/view/MenuItemView;
.super Landroid/widget/FrameLayout;
.source "MenuItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuItemView"


# instance fields
.field private mImage:Lcom/android/fileexplorer/view/AliasImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getContendDesc(I)I
    .registers 3

    const v0, 0x7f0a025e

    if-eq p1, v0, :cond_29

    packed-switch p1, :pswitch_data_2e

    packed-switch p1, :pswitch_data_3e

    const/4 p1, 0x0

    goto :goto_2c

    :pswitch_d  #0x7f0a026e
    const p1, 0x7f1101eb

    goto :goto_2c

    :pswitch_11  #0x7f0a026d
    const p1, 0x7f1101ea

    goto :goto_2c

    :pswitch_15  #0x7f0a026b
    const p1, 0x7f1103f0

    goto :goto_2c

    :pswitch_19  #0x7f0a0269
    const p1, 0x7f1103f3

    goto :goto_2c

    :pswitch_1d  #0x7f0a0268
    const p1, 0x7f1103f2

    goto :goto_2c

    :pswitch_21  #0x7f0a0267
    const p1, 0x7f1103ee

    goto :goto_2c

    :pswitch_25  #0x7f0a0266, 0x7f0a026a
    const p1, 0x7f1103ef

    goto :goto_2c

    :cond_29
    const p1, 0x7f110131

    :goto_2c
    return p1

    nop

    :pswitch_data_2e
    .packed-switch 0x7f0a0266
        :pswitch_25  #7f0a0266
        :pswitch_21  #7f0a0267
        :pswitch_1d  #7f0a0268
        :pswitch_19  #7f0a0269
        :pswitch_25  #7f0a026a
        :pswitch_15  #7f0a026b
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x7f0a026d
        :pswitch_11  #7f0a026d
        :pswitch_d  #7f0a026e
    .end packed-switch
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032ff2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/AliasImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    const v0, 0x7f032ffa

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    return-void
.end method

.method public setMenuItemData(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    iget-boolean v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    if-eqz v1, :cond_16

    move v2, v3

    :cond_16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    iget v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_33

    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->clickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_33
    iget p1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuId:I

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/MenuItemView;->getContendDesc(I)I

    move-result p1

    if-eqz p1, :cond_42

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_42
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_21
    return-void
.end method
