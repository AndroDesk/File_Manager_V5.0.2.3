.class public Lcom/android/fileexplorer/view/TextImgCenterBtn;
.super Landroid/widget/FrameLayout;
.source "TextImgCenterBtn.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private rootView:Landroid/view/View;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextImgCenterBtn;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextImgCenterBtn;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextImgCenterBtn;->initView()V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d01d7

    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0a023b

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->rootView:Landroid/view/View;

    .line 25
    const v0, 0x7f0a01e6

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->imageView:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0a041d

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->textView:Landroid/widget/TextView;

    .line 47
    return-void
.end method


# virtual methods
.method public setBtnContent(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :cond_7
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_e
    return-void
.end method

.method public setBtnContent(III)V
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->rootView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 6
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    :cond_7
    iget-object p3, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->imageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_e

    .line 8
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_25

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06058c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_25
    return-void
.end method
