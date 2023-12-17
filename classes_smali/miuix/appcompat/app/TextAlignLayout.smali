.class public Lmiuix/appcompat/app/TextAlignLayout;
.super Landroid/widget/LinearLayout;
.source "TextAlignLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    move v1, p2

    .line 11
    move v2, v0

    .line 12
    :goto_b
    if-ge v1, p1, :cond_2a

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v3

    .line 18
    if-eqz v2, :cond_27

    .line 20
    instance-of v4, v3, Landroid/widget/TextView;

    .line 22
    if-eqz v4, :cond_27

    .line 24
    check-cast v3, Landroid/widget/TextView;

    .line 26
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    .line 29
    move-result v2

    .line 30
    if-gt v2, v0, :cond_21

    .line 32
    move v2, v0

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v2, p2

    .line 35
    :goto_22
    if-eqz v2, :cond_27

    .line 37
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_b

    .line 43
    :cond_2a
    return-void
.end method
