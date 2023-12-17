.class public Lmiuix/preference/RadioButtonPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;,
        Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;,
        Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreferenceCategory"


# instance fields
.field private mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

.field private mCheckedPosition:I

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 5
    sget v0, Lmiuix/preference/R$attr;->preferenceCategoryRadioStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 4
    new-instance p1, Lmiuix/preference/RadioButtonPreferenceCategory$1;

    invoke-direct {p1, p0}, Lmiuix/preference/RadioButtonPreferenceCategory$1;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory;->checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 4
    return-void
.end method

.method private callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$c;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_13

    .line 7
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$c;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p2, p1}, Landroidx/preference/Preference$c;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    :goto_14
    return p1
.end method

.method private checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move-object v0, p1

    .line 15
    :goto_e
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 17
    if-eqz v1, :cond_18

    .line 19
    invoke-virtual {v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 22
    move-result-object v1

    .line 23
    if-eq v0, v1, :cond_21

    .line 25
    :cond_18
    invoke-direct {p0, p2, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z

    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_21

    .line 31
    invoke-virtual {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 34
    :cond_21
    return-void
.end method

.method private clearChecked()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 15
    return-void
.end method

.method private parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 3
    if-eqz v0, :cond_20

    .line 5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 11
    if-eqz v0, :cond_18

    .line 13
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    .line 15
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 21
    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V

    .line 24
    return-object v0

    .line 25
    :cond_18
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;

    .line 27
    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    .line 29
    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreference;)V

    .line 32
    return-object v0

    .line 33
    :cond_20
    instance-of v0, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 35
    if-eqz v0, :cond_2c

    .line 37
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    .line 39
    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 41
    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V

    .line 44
    return-object v0

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string v0, "Only RadioButtonPreference or RadioSetPreferenceCategory can be added to RadioButtonPreferenceCategory"

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method

.method private setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 5
    return-void
.end method

.method private updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    if-ge v1, v0, :cond_1d

    .line 14
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 21
    move-result-object v3

    .line 22
    if-ne v2, v3, :cond_1a

    .line 24
    iput v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1c

    .line 7
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 9
    if-eqz v0, :cond_1a

    .line 11
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_1a

    .line 21
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 27
    :cond_1a
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 29
    :cond_1c
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_f

    .line 11
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 16
    :cond_f
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_24

    .line 22
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 24
    if-nez v1, :cond_1c

    .line 26
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 28
    goto :goto_24

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    const-string v0, "Already has a checked item, please check state of new add preference"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :cond_24
    :goto_24
    return p1
.end method

.method public getCheckedPosition()I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_c

    .line 6
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 13
    :cond_c
    iget v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 15
    return v0
.end method

.method public getCheckedPreference()Landroidx/preference/Preference;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public removeAll()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 10
    return-void
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1d

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 15
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1d

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 28
    iput-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 30
    :cond_1d
    return p1
.end method

.method public setCheckedPosition(I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 19
    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 22
    iput p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 24
    return-void
.end method

.method public setCheckedPreference(Landroidx/preference/Preference;)V
    .registers 3

    .line 1
    if-nez p1, :cond_6

    .line 3
    invoke-direct {p0}, Lmiuix/preference/RadioButtonPreferenceCategory;->clearChecked()V

    .line 6
    return-void

    .line 7
    :cond_6
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 21
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 24
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 27
    return-void
.end method
