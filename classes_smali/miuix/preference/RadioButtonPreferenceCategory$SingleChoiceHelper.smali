.class abstract Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.super Ljava/lang/Object;
.source "RadioButtonPreferenceCategory.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SingleChoiceHelper"
.end annotation


# instance fields
.field public mCheckable:Landroid/widget/Checkable;

.field public final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    .line 8
    return-void
.end method


# virtual methods
.method public abstract getPreference()Landroidx/preference/Preference;
.end method

.method public isChecked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    .line 3
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    .line 3
    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 6
    return-void
.end method

.method public abstract setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
.end method

.method public toggle()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 10
    return-void
.end method
