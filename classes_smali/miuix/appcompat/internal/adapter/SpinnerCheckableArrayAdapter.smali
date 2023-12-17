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

    sget v0, Lmiuix/appcompat/R$id;->tag_spinner_dropdown_view:I

    sput v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V
    .registers 6

    const v0, 0x1020014

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    iput-object p4, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mCheckProvider:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V
    .registers 5

    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    invoke-direct {p0, p1, v0, p2, p3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    sget v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_33

    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_spinner_dropdown_checkable_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;-><init>(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;)V

    sget v2, Lmiuix/appcompat/R$id;->spinner_dropdown_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    const v2, 0x1020001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    sget v2, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_33
    sget v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_66

    check-cast v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;

    iget-object v2, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iget-object v2, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mCheckProvider:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

    if-eqz p3, :cond_5e

    invoke-interface {p3, p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;->isChecked(I)Z

    move-result p1

    if-eqz p1, :cond_5e

    const/4 v0, 0x1

    :cond_5e
    iget-object p1, v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    :cond_66
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasStableIds()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method