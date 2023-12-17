.class public Lcom/android/fileexplorer/view/UpDownIndicator;
.super Landroid/widget/RelativeLayout;
.source "UpDownIndicator.java"


# instance fields
.field private mDown:Landroid/widget/ImageView;

.field private mUp:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/UpDownIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d01df

    .line 5
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a047c

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/UpDownIndicator;->mUp:Landroid/widget/ImageView;

    const p1, 0x7f0a0145

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/UpDownIndicator;->mDown:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public toggle()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/UpDownIndicator;->mUp:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/UpDownIndicator;->mDown:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_17

    .line 16
    if-nez v1, :cond_17

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/view/UpDownIndicator;->mUp:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 23
    goto :goto_23

    .line 24
    :cond_17
    iget-object v3, p0, Lcom/android/fileexplorer/view/UpDownIndicator;->mUp:Landroid/widget/ImageView;

    .line 26
    xor-int/2addr v0, v2

    .line 27
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/view/UpDownIndicator;->mDown:Landroid/widget/ImageView;

    .line 32
    xor-int/2addr v1, v2

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 36
    :goto_23
    return-void
.end method
