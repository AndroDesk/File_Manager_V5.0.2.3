.class Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;
.super Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategorySingleChoiceHelper"
.end annotation


# instance fields
.field private mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

.field public final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 3
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V

    .line 6
    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 8
    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/Preference;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 3
    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 6
    invoke-virtual {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_14

    .line 12
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 14
    invoke-virtual {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/preference/RadioSetPreferenceCategory;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 6
    return-void
.end method
