.class public Lcom/android/fileexplorer/view/TextImgCenterBtn;
.super Landroid/widget/FrameLayout;
.source "TextImgCenterBtn.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private rootView:Landroid/view/View;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextImgCenterBtn;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextImgCenterBtn;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextImgCenterBtn;->initView()V

    return-void
.end method

.method private initView()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01d7

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032fad

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->rootView:Landroid/view/View;

    const v0, 0x7f032c70

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f03298b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setBtnContent(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_e
    return-void
.end method

.method public setBtnContent(III)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->rootView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    iget-object p3, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->imageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_e

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_29

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextImgCenterBtn;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f281a

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_29
    return-void
.end method
