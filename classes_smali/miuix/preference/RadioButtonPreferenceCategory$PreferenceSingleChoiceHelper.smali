.class Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;
.super Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferenceSingleChoiceHelper"
.end annotation


# instance fields
.field public mPreference:Lmiuix/preference/RadioButtonPreference;

.field public final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreference;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 3
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V

    .line 6
    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    .line 8
    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/Preference;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    .line 3
    return-object v0
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 6
    return-void
.end method
