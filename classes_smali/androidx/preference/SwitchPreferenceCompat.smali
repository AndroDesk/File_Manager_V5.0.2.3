.class public Landroidx/preference/SwitchPreferenceCompat;
.super Landroidx/preference/TwoStatePreference;
.source "SwitchPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SwitchPreferenceCompat$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/preference/SwitchPreferenceCompat$a;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 14
    sget v0, Landroidx/preference/i;->switchPreferenceCompatStyle:I

    .line 15
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v1, Landroidx/preference/SwitchPreferenceCompat$a;

    invoke-direct {v1, p0}, Landroidx/preference/SwitchPreferenceCompat$a;-><init>(Landroidx/preference/SwitchPreferenceCompat;)V

    iput-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->a:Landroidx/preference/SwitchPreferenceCompat$a;

    .line 3
    sget-object v1, Landroidx/preference/q;->SwitchPreferenceCompat:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Landroidx/preference/q;->SwitchPreferenceCompat_summaryOn:I

    sget p3, Landroidx/preference/q;->SwitchPreferenceCompat_android_summaryOn:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 5
    sget p2, Landroidx/preference/q;->SwitchPreferenceCompat_summaryOff:I

    sget p3, Landroidx/preference/q;->SwitchPreferenceCompat_android_summaryOff:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 6
    sget p2, Landroidx/preference/q;->SwitchPreferenceCompat_switchTextOn:I

    sget p3, Landroidx/preference/q;->SwitchPreferenceCompat_android_switchTextOn:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    .line 7
    iput-object p2, p0, Landroidx/preference/SwitchPreferenceCompat;->b:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 9
    sget p2, Landroidx/preference/q;->SwitchPreferenceCompat_switchTextOff:I

    sget p3, Landroidx/preference/q;->SwitchPreferenceCompat_android_switchTextOff:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    .line 10
    iput-object p2, p0, Landroidx/preference/SwitchPreferenceCompat;->c:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 12
    sget p2, Landroidx/preference/q;->SwitchPreferenceCompat_disableDependentsState:I

    sget p3, Landroidx/preference/q;->SwitchPreferenceCompat_android_disableDependentsState:I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setDisableDependentsState(Z)V

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 5

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    :cond_b
    instance-of v1, p1, Landroid/widget/Checkable;

    .line 14
    if-eqz v1, :cond_17

    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Landroid/widget/Checkable;

    .line 19
    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 21
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 24
    :cond_17
    if-eqz v0, :cond_2a

    .line 26
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 28
    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->b:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->c:Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->a:Landroidx/preference/SwitchPreferenceCompat$a;

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    :cond_2a
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/h;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 4
    sget v0, Landroidx/preference/l;->switchWidget:I

    .line 6
    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreferenceCompat;->a(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->syncSummaryView(Landroidx/preference/h;)V

    .line 16
    return-void
.end method

.method public final performClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "accessibility"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 16
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_16

    .line 22
    goto :goto_29

    .line 23
    :cond_16
    sget v0, Landroidx/preference/l;->switchWidget:I

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreferenceCompat;->a(Landroid/view/View;)V

    .line 32
    const v0, 0x1020010

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    .line 42
    :goto_29
    return-void
.end method
