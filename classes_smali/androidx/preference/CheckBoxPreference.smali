.class public Landroidx/preference/CheckBoxPreference;
.super Landroidx/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/CheckBoxPreference$a;
    }
.end annotation


# instance fields
.field private final mListener:Landroidx/preference/CheckBoxPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 9
    sget v0, Landroidx/preference/i;->checkBoxPreferenceStyle:I

    const v1, 0x101008f

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    new-instance v0, Landroidx/preference/CheckBoxPreference$a;

    invoke-direct {v0, p0}, Landroidx/preference/CheckBoxPreference$a;-><init>(Landroidx/preference/CheckBoxPreference;)V

    iput-object v0, p0, Landroidx/preference/CheckBoxPreference;->mListener:Landroidx/preference/CheckBoxPreference$a;

    .line 4
    sget-object v0, Landroidx/preference/q;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Landroidx/preference/q;->CheckBoxPreference_summaryOn:I

    sget p3, Landroidx/preference/q;->CheckBoxPreference_android_summaryOn:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 6
    sget p2, Landroidx/preference/q;->CheckBoxPreference_summaryOff:I

    sget p3, Landroidx/preference/q;->CheckBoxPreference_android_summaryOff:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 7
    sget p2, Landroidx/preference/q;->CheckBoxPreference_disableDependentsState:I

    sget p3, Landroidx/preference/q;->CheckBoxPreference_android_disableDependentsState:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setDisableDependentsState(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private syncCheckboxView(Landroid/view/View;)V
    .registers 5

    .line 1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Landroid/widget/CompoundButton;

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
    if-eqz v0, :cond_20

    .line 26
    check-cast p1, Landroid/widget/CompoundButton;

    .line 28
    iget-object v0, p0, Landroidx/preference/CheckBoxPreference;->mListener:Landroidx/preference/CheckBoxPreference$a;

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    :cond_20
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accessibility"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    const v0, 0x1020001

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Landroidx/preference/CheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 30
    const v0, 0x1020010

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 4
    const v0, 0x1020001

    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Landroidx/preference/CheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->syncSummaryView(Landroidx/preference/h;)V

    .line 17
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    .line 4
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 7
    return-void
.end method
