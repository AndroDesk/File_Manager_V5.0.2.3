.class public Lcom/android/fileexplorer/fragment/panel/PanelTitleView;
.super Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
.source "PanelTitleView.java"


# instance fields
.field private mSplitLine:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0329bb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f032e58

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->mSplitLine:Landroid/view/View;

    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelTitleView;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f042dac

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->mSplitLine:Landroid/view/View;

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    goto :goto_8

    :cond_6
    const/16 p2, 0x8

    :goto_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
