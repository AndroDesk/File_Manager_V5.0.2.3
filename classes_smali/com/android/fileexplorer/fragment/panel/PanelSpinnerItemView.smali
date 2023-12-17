.class public Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;
.super Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
.source "PanelSpinnerItemView.java"


# instance fields
.field private mSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f032e50

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/Spinner;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;

    const v1, 0x7f0d01a6

    const/4 v2, 0x0

    invoke-static {p0, v1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindView(ILcom/android/fileexplorer/fragment/panel/PanelItem;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getTitleResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public getSpinner()Lmiuix/appcompat/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    return-object v0
.end method
