.class public Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;
.super Landroid/widget/LinearLayout;
.source "RefreshFooterView.java"


# static fields
.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NORMAL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0d01be

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 15
    const v0, 0x7f0a034f

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    const/4 v1, -0x1

    .line 29
    const/4 v2, -0x2

    .line 30
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    return-void
.end method


# virtual methods
.method public setState(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_5

    .line 4
    const/4 p1, 0x0

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const/16 p1, 0x8

    .line 8
    :goto_7
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    return-void
.end method
