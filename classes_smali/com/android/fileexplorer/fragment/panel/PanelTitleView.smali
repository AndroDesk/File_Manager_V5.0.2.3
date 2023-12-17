.class public Lcom/android/fileexplorer/fragment/panel/PanelTitleView;
.super Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
.source "PanelTitleView.java"


# instance fields
.field private mSplitLine:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    const v0, 0x7f0a042d

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->mTitle:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f0a03ce

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->mSplitLine:Landroid/view/View;

    .line 24
    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelTitleView;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p0

    .line 11
    const v1, 0x7f0d003a

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;-><init>(Landroid/view/View;)V

    .line 22
    return-object v0
.end method


# virtual methods
.method public bindView(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->mSplitLine:Landroid/view/View;

    .line 3
    if-eqz p2, :cond_6

    .line 5
    const/4 p2, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/16 p2, 0x8

    .line 9
    :goto_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->mTitle:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method
