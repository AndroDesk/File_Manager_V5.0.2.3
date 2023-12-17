.class Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;
.super Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;
.source "DropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownLayoutAdapter"
.end annotation


# instance fields
.field private mValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;I)V

    .line 5
    sget-object v1, Lmiuix/preference/R$styleable;->DropDownPreference:[I

    .line 7
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p2

    .line 11
    sget p3, Lmiuix/preference/R$styleable;->DropDownPreference_entries:I

    .line 13
    invoke-static {p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 19
    sget p3, Lmiuix/preference/R$styleable;->DropDownPreference_entryValues:I

    .line 21
    invoke-static {p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    .line 24
    move-result-object p3

    .line 25
    iput-object p3, p0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->mValues:[Ljava/lang/CharSequence;

    .line 27
    sget p3, Lmiuix/preference/R$styleable;->DropDownPreference_entrySummaries:I

    .line 29
    invoke-static {p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    .line 32
    move-result-object p3

    .line 33
    iput-object p3, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 35
    sget p3, Lmiuix/preference/R$styleable;->DropDownPreference_entryIcons:I

    .line 37
    const/4 p4, -0x1

    .line 38
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 41
    move-result p3

    .line 42
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    if-lez p3, :cond_50

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 58
    move-result p2

    .line 59
    new-array p2, p2, [I

    .line 61
    move p3, v0

    .line 62
    :goto_3d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 65
    move-result p4

    .line 66
    if-ge p3, p4, :cond_4c

    .line 68
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    move-result p4

    .line 72
    aput p4, p2, p3

    .line 74
    add-int/lit8 p3, p3, 0x1

    .line 76
    goto :goto_3d

    .line 77
    :cond_4c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    const/4 p2, 0x0

    .line 82
    :goto_51
    invoke-virtual {p0, p2}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([I)V

    .line 85
    return-void
.end method


# virtual methods
.method public getEntryValues()[Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->mValues:[Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->mValues:[Ljava/lang/CharSequence;

    .line 3
    return-void
.end method
