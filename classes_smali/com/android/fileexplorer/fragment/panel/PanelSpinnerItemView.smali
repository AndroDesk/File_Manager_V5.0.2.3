.class public Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;
.super Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
.source "PanelSpinnerItemView.java"


# instance fields
.field private mSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    const v0, 0x1020014

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->mTextView:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f0a03c6

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lmiuix/appcompat/widget/Spinner;

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 26
    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;

    .line 3
    const v1, 0x7f0d01a6

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;-><init>(Landroid/view/View;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public bindView(ILcom/android/fileexplorer/fragment/panel/PanelItem;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->mTextView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getTitleResId()I

    .line 6
    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 10
    return-void
.end method

.method public getSpinner()Lmiuix/appcompat/widget/Spinner;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 3
    return-object v0
.end method
