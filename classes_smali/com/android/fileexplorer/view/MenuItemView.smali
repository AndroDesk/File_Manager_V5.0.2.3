.class public Lcom/android/fileexplorer/view/MenuItemView;
.super Landroid/widget/FrameLayout;
.source "MenuItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuItemView"


# instance fields
.field private mImage:Lcom/android/fileexplorer/view/AliasImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
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

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0264

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/fileexplorer/view/AliasImageView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    .line 15
    const v0, 0x7f0a026c

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    .line 26
    return-void
.end method

.method public setMenuItemData(Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    .line 3
    iget-boolean v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x8

    .line 8
    if-eqz v1, :cond_b

    .line 10
    move v1, v2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v1, v3

    .line 13
    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    .line 18
    iget-boolean v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    .line 20
    if-eqz v1, :cond_16

    .line 22
    move v2, v3

    .line 23
    :cond_16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-boolean v0, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    .line 28
    if-eqz v0, :cond_25

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    .line 32
    iget v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuResId:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    goto :goto_33

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    .line 40
    iget v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuResId:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    .line 47
    iget-boolean v1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->clickable:Z

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 52
    :goto_33
    iget p1, p1, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuId:I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/MenuItemView;->getContendDesc(I)I

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_42

    .line 60
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    :cond_42
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    .line 6
    if-eqz v0, :cond_12

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mImage:Lcom/android/fileexplorer/view/AliasImageView;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    .line 21
    if-eqz v0, :cond_21

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_21

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/view/MenuItemView;->mText:Landroid/widget/TextView;

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 34
    :cond_21
    return-void
.end method
