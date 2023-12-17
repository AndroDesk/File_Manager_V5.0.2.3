.class public Lmiuix/preference/RadioSetPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "RadioSetPreferenceCategory.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z

.field private mCheckedSet:Z

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mInternalListenerProxy:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mPrimaryKey:Ljava/lang/String;

.field private mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioSetPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 7
    sget v0, Lmiuix/preference/R$attr;->preferenceCategoryCheckableStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioSetPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/RadioSetPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Lmiuix/preference/RadioSetPreferenceCategory$1;

    invoke-direct {v0, p0}, Lmiuix/preference/RadioSetPreferenceCategory$1;-><init>(Lmiuix/preference/RadioSetPreferenceCategory;)V

    iput-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 3
    sget-object v0, Lmiuix/preference/R$styleable;->RadioSetPreferenceCategory:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lmiuix/preference/R$styleable;->RadioSetPreferenceCategory_primaryKey:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryKey:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/OnPreferenceChangeInternalListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryKey:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_21

    .line 5
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_51

    .line 11
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 13
    if-eqz v0, :cond_19

    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 18
    iput-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 20
    iget-object v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 25
    goto :goto_51

    .line 26
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string v0, "The first preference must be RadioButtonPreference, if primary key is empty"

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_21
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_51

    .line 44
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 46
    if-eqz v0, :cond_3a

    .line 48
    if-ne v0, p1, :cond_32

    .line 50
    goto :goto_3a

    .line 51
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string v0, "must not have two primary preference"

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1

    .line 59
    :cond_3a
    :goto_3a
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 61
    if-eqz v0, :cond_49

    .line 63
    move-object v0, p1

    .line 64
    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 66
    iput-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 68
    iget-object v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 70
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 73
    goto :goto_51

    .line 74
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    const-string v0, "Primary preference must be RadioButtonPreference"

    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p1

    .line 82
    :cond_51
    :goto_51
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 85
    move-result p1

    .line 86
    return p1
.end method

.method public getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 3
    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    .line 3
    return v0
.end method

.method public setChecked(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, p1, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-nez v0, :cond_e

    .line 11
    iget-boolean v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mCheckedSet:Z

    .line 13
    if-nez v0, :cond_12

    .line 15
    :cond_e
    iput-boolean p1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    .line 17
    iput-boolean v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mCheckedSet:Z

    .line 19
    :cond_12
    return-void
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 3
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/RadioSetPreferenceCategory;->isChecked()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/preference/RadioSetPreferenceCategory;->setChecked(Z)V

    .line 10
    return-void
.end method
