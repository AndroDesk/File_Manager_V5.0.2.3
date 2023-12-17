.class public Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerDoubleLineContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG_VIEW:I


# instance fields
.field public mEntries:[Ljava/lang/CharSequence;

.field public mIcons:[Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lmiuix/appcompat/R$id;->tag_spinner_dropdown_view_double_line:I

    .line 3
    sput v0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V
    .registers 6

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-object p2, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 5
    iput-object p3, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p0, p4}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([I)V

    return-void
.end method

.method private getEntry(I)Ljava/lang/CharSequence;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    aget-object p1, v0, p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    :goto_b
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method private getIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    aget-object p1, v0, p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    :goto_b
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method private getSummary(I)Ljava/lang/CharSequence;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    aget-object p1, v0, p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    :goto_b
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    array-length v0, v0

    .line 8
    :goto_7
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_b

    .line 4
    sget v1, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_3f

    .line 12
    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 14
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_spiner_dropdown_view_double_line:I

    .line 16
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    new-instance p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p3, v1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;-><init>(Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$1;)V

    .line 26
    const v1, 0x1020006

    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/ImageView;

    .line 35
    iput-object v1, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 37
    const v1, 0x1020016

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 46
    iput-object v1, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 48
    const v1, 0x1020010

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/widget/TextView;

    .line 57
    iput-object v1, p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 59
    sget v1, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    .line 61
    invoke-virtual {p2, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 64
    :cond_3f
    invoke-direct {p0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntry(I)Ljava/lang/CharSequence;

    .line 67
    move-result-object p3

    .line 68
    invoke-direct {p0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getSummary(I)Ljava/lang/CharSequence;

    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getIcon(I)Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object p1

    .line 76
    sget v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    .line 78
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_95

    .line 84
    check-cast v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;

    .line 86
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v3

    .line 90
    const/16 v4, 0x8

    .line 92
    if-nez v3, :cond_68

    .line 94
    iget-object v3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 96
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    goto :goto_6d

    .line 105
    :cond_68
    iget-object p3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_6d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    move-result p3

    .line 114
    if-nez p3, :cond_7e

    .line 116
    iget-object p3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    goto :goto_83

    .line 127
    :cond_7e
    iget-object p3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :goto_83
    if-eqz p1, :cond_90

    .line 134
    iget-object p3, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 136
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object p1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    goto :goto_95

    .line 145
    :cond_90
    iget-object p1, v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 147
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :cond_95
    :goto_95
    return-object p2
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getEntryIcons()[Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    aget-object p1, v0, p1

    .line 9
    :goto_8
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSummaries()[Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 3
    return-void
.end method

.method public setEntryIcons([I)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([Landroid/graphics/drawable/Drawable;)V

    goto :goto_29

    .line 2
    :cond_7
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :goto_13
    array-length v4, p1

    if-ge v3, v4, :cond_26

    .line 5
    aget v4, p1, v3

    if-lez v4, :cond_21

    .line 6
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_23

    .line 7
    :cond_21
    aput-object v0, v1, v3

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 8
    :cond_26
    invoke-virtual {p0, v1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([Landroid/graphics/drawable/Drawable;)V

    :goto_29
    return-void
.end method

.method public setEntryIcons([Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSummaries([Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 3
    return-void
.end method
