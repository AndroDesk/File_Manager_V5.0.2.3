.class public Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;
.super Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
.source "PanelChoiceItemView.java"


# instance fields
.field private mTextView:Lmiuix/androidbasewidget/widget/CheckedTextView;


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
    move-result-object p1

    .line 11
    check-cast p1, Lmiuix/androidbasewidget/widget/CheckedTextView;

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;->mTextView:Lmiuix/androidbasewidget/widget/CheckedTextView;

    .line 15
    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;

    .line 3
    const v1, 0x7f0d01a5

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;-><init>(Landroid/view/View;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public bindView(ILcom/android/fileexplorer/fragment/panel/PanelItem;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;->mTextView:Lmiuix/androidbasewidget/widget/CheckedTextView;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getTitleResId()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;->mTextView:Lmiuix/androidbasewidget/widget/CheckedTextView;

    .line 12
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked()Z

    .line 15
    move-result p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 19
    return-void
.end method
