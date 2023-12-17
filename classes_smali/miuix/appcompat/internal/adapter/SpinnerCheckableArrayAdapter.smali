.class public Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerCheckableArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;,
        Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final TAG_VIEW:I


# instance fields
.field private mCheckProvider:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

.field private mContentAdapter:Landroid/widget/ArrayAdapter;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lmiuix/appcompat/R$id;->tag_spinner_dropdown_view:I

    .line 3
    sput v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V
    .registers 6

    const v0, 0x1020014

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    iput-object p3, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 4
    iput-object p4, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mCheckProvider:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V
    .registers 5

    .line 5
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    invoke-direct {p0, p1, v0, p2, p3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_b

    .line 4
    sget v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_33

    .line 12
    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 14
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_spinner_dropdown_checkable_item:I

    .line 16
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    new-instance v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;-><init>(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;)V

    .line 26
    sget v2, Lmiuix/appcompat/R$id;->spinner_dropdown_container:I

    .line 28
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/FrameLayout;

    .line 34
    iput-object v2, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 36
    const v2, 0x1020001

    .line 39
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/widget/RadioButton;

    .line 45
    iput-object v2, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 47
    sget v2, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    .line 49
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    :cond_33
    sget v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_66

    .line 60
    check-cast v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;

    .line 62
    iget-object v2, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 64
    iget-object v3, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 66
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, p1, v3, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    move-result-object p3

    .line 74
    iget-object v2, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 76
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 79
    iget-object v2, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 81
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    iget-object p3, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mCheckProvider:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

    .line 86
    if-eqz p3, :cond_5e

    .line 88
    invoke-interface {p3, p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;->isChecked(I)Z

    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5e

    .line 94
    const/4 v0, 0x1

    .line 95
    :cond_5e
    iget-object p1, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 103
    :cond_66
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method
